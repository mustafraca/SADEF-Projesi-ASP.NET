<%@ Page Title="Araç Yedek Parça" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="MYedekParca.aspx.cs" Inherits="_153531038.MYedekParca" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <span class="fa-4x">Araç Yedek Parça</span>
        <div class="divider"></div>
        <br />
        <table style="width:100%; height:100%">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:90%; height:90%">
                        <tr>
                            <td>
                                No:
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>
                                Marka:
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Marka" DataValueField="Marka"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AYPVTBaglan %>" SelectCommand="SELECT [Marka] FROM [Marka]"></asp:SqlDataSource>
                            </td>
                            <td>
                                Kategori:
                                <br />
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                                    <asp:ListItem>Amortisör ve Yay</asp:ListItem>
                                    <asp:ListItem>Aydınlatma</asp:ListItem>
                                    <asp:ListItem>İç Aksam</asp:ListItem>
                                    <asp:ListItem>Elektrik Isıtma/Soğutma</asp:ListItem>
                                    <asp:ListItem>Filtreler</asp:ListItem>
                                    <asp:ListItem>Kaporta</asp:ListItem>
                                    <asp:ListItem>Mekanik</asp:ListItem>
                                    <asp:ListItem>Motor</asp:ListItem>
                                    <asp:ListItem>Radyatör Grubu</asp:ListItem>
                                    <asp:ListItem>Vites Şanzıman</asp:ListItem>
                                </asp:DropDownList>
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
                                Model:
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                            <td>
                                Fiyat:
                                <br />
                                <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox>
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
                                <asp:Button ID="Button1" runat="server" Text="EKLE" Width="300px" class="button fa-bitcoin" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="SİL" Width="300px" class="button fa-bitcoin" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="width:100%; height:100%">
            <tr>
                <asp:GridView ID="GridView1" style="width:100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
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
            </tr>
        </table>
    </div>


</asp:Content>