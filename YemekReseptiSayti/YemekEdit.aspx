<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekEdit.aspx.cs" Inherits="YemekReseptiSayti.YemekEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: large;
            text-align: right;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-size: large;
        }
        .auto-style11 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: small;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemək Ad:</strong></td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" OnTextChanged="txtYemekAd_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tərkib:</strong></td>
            <td>
                <asp:TextBox ID="txtTerkib" runat="server" CssClass="auto-style11" Height="158px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Hazırlanması:</strong></td>
            <td>
                <asp:TextBox ID="txtHazirlanmasi" runat="server" CssClass="auto-style11" Height="203px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kateqoriya:</strong></td>
            <td>
                <asp:DropDownList ID="dllKateqoriya" runat="server" CssClass="auto-style11" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="233px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Yemək Şəkil:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13"><strong>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style10" Height="41px" OnClick="btnGuncelle_Click" Text="Güncəllə" Width="119px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGununYemeyiSec" runat="server" CssClass="auto-style14" Height="41px" OnClick="btnGununYemeyiSec_Click" Text="Günün Yeməyini Seç" Width="145px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
