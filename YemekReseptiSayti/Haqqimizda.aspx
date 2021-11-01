<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="Haqqimizda.aspx.cs" Inherits="YemekReseptiSayti.Haqqimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-size: x-large;
            color: #660033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        <strong>HAQQIMIZDA</strong></p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList2" runat="server" Width="448px" style="text-align: center">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metn") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

    </p>
    <p>

        <asp:Image ID="Image1" runat="server" Height="153px" ImageUrl="~/Sekiller/blog2.png" Width="448px" />
    </p>
</asp:Content>
