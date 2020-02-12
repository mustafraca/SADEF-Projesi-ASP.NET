<%@ Page Title="Müşteri Kayıt" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="MusteriK.aspx.cs" Inherits="_153531038.MusteriK" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <span class="fa-4x">Müşteri Kayıt</span>
        <div class="divider"></div>
        <table style="width:100%; height:100%">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:90%; height:90%">
                        <tr>
                            <td>Müşteri No:<br />
                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>Ad:<br />
                                <asp:TextBox ID="TextBox2" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>Soyad:<br />
                                <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>Cep Telefon:<br />
                                <asp:TextBox ID="TextBox4" runat="server" MaxLength="11"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>E-Posta:<br />
                                <asp:TextBox ID="TextBox5" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>Şehir:<br />
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sehir" DataValueField="Sehir"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AYPVTBaglan %>" SelectCommand="SELECT [Sehir] FROM [Sehir]"></asp:SqlDataSource>
                            </td>
                            <td>Plaka:<br />
                                <asp:TextBox ID="TextBox6" runat="server" MaxLength="12"></asp:TextBox>
                            </td>
                            <td>Marka:<br />
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Marka" DataValueField="Marka"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AYPVTBaglan %>" SelectCommand="SELECT [Marka] FROM [Marka]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>Model Yılı:<br />
                                <asp:TextBox ID="TextBox7" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                            <td>Alış Tarihi:<br />
                                <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>Veriş Tarihi:<br />
                                <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td>Renk:<br />
                                <asp:TextBox ID="TextBox10" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                         </tr>
                        <tr>
                            <td>Araç Tipi:<br />
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Süper Mini/Makro</asp:ListItem>
                                    <asp:ListItem>Hatchback</asp:ListItem>
                                    <asp:ListItem>Sedan</asp:ListItem>
                                    <asp:ListItem>Station Wagon</asp:ListItem>
                                    <asp:ListItem>Coupe</asp:ListItem>
                                    <asp:ListItem>Cabrio</asp:ListItem>
                                    <asp:ListItem>MPV</asp:ListItem>
                                    <asp:ListItem>Crossover</asp:ListItem>
                                    <asp:ListItem>SUV</asp:ListItem>
                                    <asp:ListItem>Super Sport</asp:ListItem>
                                    <asp:ListItem>Lüks Sedan</asp:ListItem>
                                    <asp:ListItem>Hafif Ticari</asp:ListItem>
                                    <asp:ListItem>Minibüs/Kamyonet</asp:ListItem>
                                    <asp:ListItem>Pick-up</asp:ListItem>
                                    <asp:ListItem>Elektrikli/Hibrit</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>Yakıt:<br />
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Benzin</asp:ListItem>
                                    <asp:ListItem>Dizel</asp:ListItem>
                                    <asp:ListItem>LPG</asp:ListItem>
                                    <asp:ListItem>Elektrikli/Hibrit</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>Vites Tipi:<br />
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Düz Vites</asp:ListItem>
                                    <asp:ListItem>Otomatik Vites</asp:ListItem>
                                    </asp:DropDownList>
                            </td>
                            <td>Ödeme:<br />
                                <asp:DropDownList ID="DropDownList6" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Ödeme Yapıldı</asp:ListItem>
                                    <asp:ListItem>Ödeme Yapılmadı</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <table style="text-align:center">
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Müşteriyi Kaydet" Width="300px" class="button fa-bitcoin" OnClick="Button2_Click"/>
                            </td>
                        </tr>
                    </table>       
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
