<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetal.aspx.cs" Inherits="YemekReseptiSayti.MesajDetal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            height: 24px;
            font-size: large;
            text-align: right;
        }
        .auto-style10 {
            font-size: large;
            text-align: right;
        }
        .auto-style11 {
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
            <td class="auto-style10"><strong>Mesaj Göndərən:</strong></td>
            <td>
                <asp:TextBox ID="txtMesajGonderen" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Başlıq:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtBasliq" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Poçt Ünvanı:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtPoctUnvani" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Məzmun:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMezmun" runat="server" CssClass="auto-style11" Height="201px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
