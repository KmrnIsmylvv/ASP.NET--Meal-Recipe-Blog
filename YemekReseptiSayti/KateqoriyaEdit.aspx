<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KateqoriyaEdit.aspx.cs" Inherits="YemekReseptiSayti.KateqoriyaAdminDetal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>KateqoriyaAd:</strong></td>
            <td>
                <asp:TextBox ID="txtKateqoriyaAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kateqoriya Sayı:</strong></td>
            <td>
                <asp:TextBox ID="txtKateqoriyaSayi" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kateqoriya Şəkil:</strong></td>
            <td>
                <asp:FileUpload ID="fpdKateqoriyaSekil" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="fb8" OnClick="btnGuncelle_Click" Text="Güncəllə" />
            </td>
        </tr>
    </table>
</asp:Content>
