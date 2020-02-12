<%@ Page Title="Müşteri Güncelleme" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="MusteriG.aspx.cs" Inherits="_153531038.MusteriG" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <span class="fa-4x">Müşteri Güncelleme</span>
        <div class="divider"></div>
        <br />
        <table style="width:100%; height:100%">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:90%; height:90%">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" style="width:100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" style="width:100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                            </td>
                        </tr>        
                    </table>
                    <table style="text-align:center; width:90%; height:90%">
                        <tr>
                            <td style="width: 200px">Müşteri No:<br />
                                <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Ad:<br />
                                <asp:TextBox ID="TextBox4" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Soyad:<br />
                                <asp:TextBox ID="TextBox5" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Telefon Numarası:<br />
                                <asp:TextBox ID="TextBox6" runat="server" MaxLength="11"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 200px">E-Posta:<br />
                                <asp:TextBox ID="TextBox7" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Şehir:<br />
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sehir" DataValueField="Sehir"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AYPVTBaglan %>" SelectCommand="SELECT [Sehir] FROM [Sehir]"></asp:SqlDataSource>
                            </td>
                            <td style="width: 200px">Plaka:<br /> 
                                <asp:TextBox ID="TextBox8" runat="server" MaxLength="12"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Marka:<br />
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Marka" DataValueField="Marka"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AYPVTBaglan %>" SelectCommand="SELECT [Marka] FROM [Marka]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 200px">Model Yılı:<br />
                                <asp:TextBox ID="TextBox10" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Alış Tarihi:<br />
                                <asp:TextBox ID="TextBox11" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Veriş Tarihi:<br />
                                <asp:TextBox ID="TextBox12" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td style="width: 200px">Renk:<br />
                                <asp:TextBox ID="TextBox13" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 200px">Araç Tipi:<br />
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
                            <td style="width: 200px">Yakıt:<br />
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Benzin</asp:ListItem>
                                    <asp:ListItem>Dizel</asp:ListItem>
                                    <asp:ListItem>LPG</asp:ListItem>
                                    <asp:ListItem>Elektrikli/Hibrit</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 200px">Vites Tipi:<br />
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Düz Vites</asp:ListItem>
                                    <asp:ListItem>Otomatik Vites</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 200px">Ödeme:<br />
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
                                <asp:Button ID="Button1" runat="server" Text="Müşteriyi Kaydet" Width="300px" class="button fa-bitcoin" OnClick="Button1_Click"/>
                            </td>
                        </tr>
                    </table> 
                </td>
            </tr>
        </table>
        <table style="width:100%; height:100%">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:90%; height:90%">
                        <tr>
                            <td>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
