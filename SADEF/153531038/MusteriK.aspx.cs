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
    public partial class MusteriK : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["AYPVTBaglan"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                komut = new SqlCommand("SELECT * FROM Musteri WHERE Musterino='" + TextBox1.Text + "'", baglanti);
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
                    komut = new SqlCommand("INSERT INTO Musteri (Musterino, Ad, Soyad, Ctelefon, Eposta, Sehir, Odeme) VALUES (@Musterino,@Ad,@Soyad,@Ctelefon,@Eposta,@Sehir,@Odeme)", baglanti);

                    komut.Parameters.AddWithValue("@Musterino", TextBox1.Text);
                    komut.Parameters.AddWithValue("@Ad", TextBox2.Text);
                    komut.Parameters.AddWithValue("@Soyad", TextBox3.Text);
                    komut.Parameters.AddWithValue("@Ctelefon", TextBox4.Text);
                    komut.Parameters.AddWithValue("@Eposta", TextBox5.Text);
                    komut.Parameters.AddWithValue("@Sehir", DropDownList1.SelectedItem.Text);
                    komut.Parameters.AddWithValue("@Odeme", DropDownList6.SelectedItem.Text);
                    komut.ExecuteNonQuery();
                    SqlCommand komut2 = new SqlCommand("INSERT INTO Arac (Musterino, Plaka, Alist, Verist, Marka, Model, Renk, Aract, Yakit, Vitest) VALUES (@Musterino,@Plaka,@Alist,@Verist,@Marka,@Model,@Renk,@Aract,@Yakit,@Vitest)", baglanti);

                    komut2.Parameters.AddWithValue("@Musterino", TextBox1.Text);
                    komut2.Parameters.AddWithValue("@Plaka", TextBox6.Text);
                    komut2.Parameters.AddWithValue("@Alist", TextBox8.Text);
                    komut2.Parameters.AddWithValue("@Verist", TextBox9.Text);
                    komut2.Parameters.AddWithValue("@Marka", DropDownList2.SelectedItem.Text);
                    komut2.Parameters.AddWithValue("@Model", TextBox7.Text);
                    komut2.Parameters.AddWithValue("@Renk", TextBox10.Text);
                    komut2.Parameters.AddWithValue("@Aract", DropDownList3.SelectedItem.Text);
                    komut2.Parameters.AddWithValue("@Yakit", DropDownList4.SelectedItem.Text);
                    komut2.Parameters.AddWithValue("@Vitest", DropDownList5.SelectedItem.Text);
                    komut2.ExecuteNonQuery();

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Kaydı Yapıldı.');</script>");
                    TextBoxTemizle(this);
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    DropDownList3.SelectedIndex = 0;
                    DropDownList4.SelectedIndex = 0;
                    DropDownList5.SelectedIndex = 0;
                    DropDownList6.SelectedIndex = 0;
                }
                baglanti.Close();
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Müşteri Eklenirken Hata Oluştu.');</script>");
            }
        }
    }
}