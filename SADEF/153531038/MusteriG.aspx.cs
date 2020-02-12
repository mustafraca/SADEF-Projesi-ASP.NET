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
    public partial class MusteriG : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["AYPVTBaglan"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Musteri", baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
            //
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
            baglanti.Open();
            komut = new SqlCommand("SELECT * FROM Musteri WHERE Musterino='" + TextBox3.Text + "'", baglanti);
            reader = komut.ExecuteReader();
            if (reader.Read())
            {
                komut.Dispose();
                reader.Close();
                komut = new SqlCommand("UPDATE Musteri SET Musterino=@Musterino, Ad=@Ad, Soyad=@Soyad, Ctelefon=@Ctelefon, Eposta=@Eposta, Sehir=@Sehir, Odeme=@Odeme WHERE Musterino='" + TextBox3.Text.ToString() + "'", baglanti);

                komut.Parameters.AddWithValue("@Musterino", TextBox3.Text);
                komut.Parameters.AddWithValue("@Ad", TextBox4.Text);
                komut.Parameters.AddWithValue("@Soyad", TextBox5.Text);
                komut.Parameters.AddWithValue("@Ctelefon", TextBox6.Text);
                komut.Parameters.AddWithValue("@Eposta", TextBox7.Text);
                komut.Parameters.AddWithValue("@Sehir", DropDownList1.SelectedItem.Text);
                komut.Parameters.AddWithValue("@Odeme", DropDownList6.SelectedItem.Text);

                SqlCommand komut2 = new SqlCommand("UPDATE Arac SET Musterino=@Musterino, Plaka=@Plaka, Alist=@Alist, Verist=@Verist, Marka=@Marka, Model=@Model, Renk=@Renk, Aract=@Aract, Yakit=@Yakit, Vitest=@Vitest WHERE Musterino='" + TextBox3.Text.ToString() + "'", baglanti);

                komut2.Parameters.AddWithValue("@Musterino", TextBox3.Text);
                komut2.Parameters.AddWithValue("@Plaka", TextBox8.Text);
                komut2.Parameters.AddWithValue("@Alist", TextBox11.Text);
                komut2.Parameters.AddWithValue("@Verist", TextBox12.Text);
                komut2.Parameters.AddWithValue("@Marka", DropDownList2.SelectedItem.Text);
                komut2.Parameters.AddWithValue("@Model", TextBox10.Text);
                komut2.Parameters.AddWithValue("@Renk", TextBox13.Text);
                komut2.Parameters.AddWithValue("@Aract", DropDownList3.SelectedItem.Text);
                komut2.Parameters.AddWithValue("@Yakit", DropDownList4.SelectedItem.Text);
                komut2.Parameters.AddWithValue("@Vitest", DropDownList5.SelectedItem.Text);

                try
                {
                    komut.ExecuteNonQuery();
                    komut2.ExecuteNonQuery();
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kişi Güncellendi.');</script>");
                    //
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
                }
                catch (Exception)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kişi Güncellenirken Hata Oluştu.');</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kullanıcı ID Bulunamadı.');</script>");
                TextBox3.Text = "";
                TextBox3.Focus();
            }
            baglanti.Close();
        }
    }
}