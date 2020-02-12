using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace _153531038
{
    public partial class MusteriKS : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["AYPVTBaglan"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Musteri", baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
            baglanti.Open();
            da = new SqlDataAdapter("SELECT * FROM Arac", baglanti);
            ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
            komut = new SqlCommand("SELECT * FROM Musteri WHERE Musterino='" + TextBox1.Text + "'", baglanti);
            reader = komut.ExecuteReader();
            if (reader.Read())
            {
                komut.Dispose();
                reader.Close();
                komut = new SqlCommand("DELETE FROM Musteri WHERE Musterino=@Musterino", baglanti);
                komut.Parameters.AddWithValue("@Musterino", TextBox1.Text.ToString());
                SqlCommand komut2 = new SqlCommand("DELETE FROM Arac WHERE Musterino=@Musterino", baglanti);
                komut2.Parameters.AddWithValue("@Musterino", TextBox1.Text.ToString());
                    komut.ExecuteNonQuery();
                    komut2.ExecuteNonQuery();

                    komut.Dispose();
                    reader.Close();
                    komut = new SqlCommand("SELECT * FROM Musteri", baglanti);
                    reader = komut.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    //
                    komut.Dispose();
                    reader.Close();
                    komut = new SqlCommand("SELECT * FROM Arac", baglanti);
                    reader = komut.ExecuteReader();
                    GridView2.DataSource = reader;
                    GridView2.DataBind();

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Silindi.');</script>");
                    TextBox1.Text = "";
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('ID Bulunamadı.');</script>");
                TextBox1.Text = "";
                TextBox1.Focus();
            }
            baglanti.Close();
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Silinirken Hata Oluştu.');</script>");
            }
        }
    }
}