<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="Elaqe.aspx.cs" Inherits="YemekReseptiSayti.Elaqe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style7 {
        height: 25px;
        text-align: center;
        color: #990033;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style7" colspan="2"><strong style="font-size: x-large">MESAJ PANELI</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Ad,Soyad:</td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Poçt Ünvanınız:</td>
        <td>
            <asp:TextBox ID="txtPoctUnvaniniz" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mövzu:</td>
        <td>
            <asp:TextBox ID="txtMovzu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mesaj:</td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnGonder" runat="server" Height="34px" style="font-size: medium; font-weight: 700" Text="Göndər" Width="177px" CssClass="fb8" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
