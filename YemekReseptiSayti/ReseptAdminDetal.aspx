<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ReseptAdminDetal.aspx.cs" Inherits="YemekReseptiSayti.ReseptAdminDetal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
        }
        .auto-style9 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Resept Ad:</strong></td>
            <td>
                <asp:TextBox ID="txtReseptAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tərkibi:</strong></td>
            <td>
                <asp:TextBox ID="txtTerkib" runat="server" CssClass="auto-style9" Height="240px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Hazırlanması:</strong></td>
            <td>
                <asp:TextBox ID="txtHazirlanmasi" runat="server" CssClass="auto-style9" Height="288px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Şəkil:</strong></td>
            <td>
                <asp:FileUpload ID="fldSekil" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Təklif Edən:</strong></td>
            <td>
                <asp:TextBox ID="txtTeklifEden" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Poçt Ünvanınız:</strong></td>
            <td>
                <asp:TextBox ID="txtPoctUnvaniniz" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="btnTesdiqle" runat="server"  Text="Təsdiqlə" CssClass="auto-style8" Height="40px" OnClick="btnTesdiqle_Click" Width="145px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
