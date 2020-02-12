<%@ Page Title="Müşteri Listesi" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="MusteriListesi.aspx.cs" Inherits="_153531038.MusteriListesi" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <span class="fa-4x">Müşteri Listesi</span>
        <div class="divider"></div>
        <table style="width:100%; height:100%">
            <tr>
                <td align="center">
                    <table style="text-align:center; width:60%; height:60%">
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="MÜŞTERİ BİLGİ" Width="300px" class="button fa-bitcoin" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="ARAÇ BİLGİ" Width="300px" class="button fa-bitcoin" OnClick="Button2_Click" />
                            </td>
                        </tr> 
                    </table>
                    <table style="text-align:center">
                        <tr>
                                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" style="width:100%; text-align:center" CellPadding="3" >
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>                             
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
