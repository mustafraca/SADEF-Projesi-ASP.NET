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
    public partial class MYedekParca : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["AYPVTBaglan"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Yedek", baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
        }

        public static void TextBoxTemizle(Page page)
        {
            foreach (Control c in page.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Text = "";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                komut = new SqlCommand("SELECT * FROM Yedek WHERE id='" + TextBox1.Text + "'", baglanti);
                reader = komut.ExecuteReader();
                if (reader.Read())
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('ID Kullanılmaktadır.');</script>");
                    TextBox1.Text = "";
                    TextBox1.Focus();
                }
                else
                {
                    komut.Dispose();
                    reader.Close();
                    komut = new SqlCommand("INSERT INTO Yedek (id, Marka, Kategori, Model, Fiyat) VALUES (@id,@Marka,@Kategori,@Model,@Fiyat)", baglanti);

                    komut.Parameters.AddWithValue("@id", TextBox1.Text);
                    komut.Parameters.AddWithValue("@Marka", DropDownList1.SelectedItem.Text);
                    komut.Parameters.AddWithValue("@Kategori", DropDownList2.SelectedItem.Text);
                    komut.Parameters.AddWithValue("@Model", TextBox2.Text);
                    komut.Parameters.AddWithValue("@Fiyat", TextBox3.Text);

                    try
                    {
                        komut.ExecuteNonQuery();

                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Yedek Parça Kaydı Yapıldı.');</script>");
                        //
                        komut.Dispose();
                        reader.Close();
                        komut = new SqlCommand("SELECT * FROM Yedek", baglanti);
                        reader = komut.ExecuteReader();
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                        //
                        TextBoxTemizle(this);
                        DropDownList1.SelectedIndex = 0;
                        DropDownList2.SelectedIndex = 0;
                    }
                    catch (Exception hata)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Yedek Parça Eklenirken Hata Oluştu.');</script>" + hata);
                    }
                }
            }
            catch (Exception hata)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Hata Oluştu.');</script>" + hata);
            }
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            komut = new SqlCommand("SELECT * FROM Yedek WHERE id='" + TextBox1.Text + "'", baglanti);
            reader = komut.ExecuteReader();
            if (reader.Read())
            {
                komut.Dispose();
                reader.Close();
                komut = new SqlCommand("DELETE FROM Yedek WHERE id=@id", baglanti);
                komut.Parameters.AddWithValue("@id", TextBox1.Text.ToString());
                try
                {
                    komut.ExecuteNonQuery();

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Silindi.');</script>");
                    //
                    komut.Dispose();
                    reader.Close();
                    komut = new SqlCommand("SELECT * FROM Yedek", baglanti);
                    reader = komut.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                }
                catch (Exception)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Silinirken Hata Oluştu.');</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('ID Bulunamadı.');</script>");
                TextBox1.Text = "";
                TextBox1.Focus();
            }
            baglanti.Close();
        }
    }
}