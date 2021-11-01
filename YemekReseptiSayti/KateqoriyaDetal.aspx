<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="KateqoriyaDetal.aspx.cs" Inherits="YemekReseptiSayti.KateqoriyaDetal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td style="background-color: #FF9966"><a href="YemekDetal.aspx?YemekId=<%# Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; color: #990033;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><strong>Tərkib:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekIngredient") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Hazırlanması:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekResept") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Xal:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekXal") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Əlavə Olunma Tarixi:</strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarix") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-top-style: groove; border-width: medium">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
