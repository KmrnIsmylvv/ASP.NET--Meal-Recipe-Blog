<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="YemekDetal.aspx.cs" Inherits="YemekReseptiSayti.YemekDetal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label9" runat="server" style="font-size: xx-large; font-weight: 700; color: #800000;" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" style="font-size: large; color: #FFCCCC" Text='<%# Eval("SerhAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border-style: groove; border-width: thin">
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("SerhMezmun") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label12" runat="server" style="font-size: small" Text='<%# Eval("SerhTarix") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <br />

    <div style="color: #FFFFFF; background-color: #990000; text-align: center;">&nbsp;<span class="auto-style9">Şərh Yazma Paneli </span> </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Ad,Soyad:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Height="20px" Width="200px" CssClass="tb5" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Mail:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Şərh:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSerh" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700; font-size: medium" Text="Göndər" Width="145px" CssClass="fb8" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
