<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SerhlerDetal.aspx.cs" Inherits="YemekReseptiSayti.SerhlerDetal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: large;
            text-align: right;
        }

        .auto-style10 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: large;
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
            <td class="auto-style8"><strong>Ad,Soyad:</strong></td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Poçt Ünvanı:</strong></td>
            <td>
                <asp:TextBox ID="txtPoctUnvani" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Məzmun:</strong></td>
            <td>
                <asp:TextBox ID="txtMezmun" runat="server" CssClass="auto-style11" Height="180px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemək:</strong></td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnTesdiqle" runat="server" CssClass="auto-style10" Text="Təsdiqlə" Width="140px" Height="36px" OnClick="btnTesdiqle_Click"  />
            </strong></td>
        </tr>
    </table>
</asp:Content>
