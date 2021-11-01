<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="ReseptTeklifEt.aspx.cs" Inherits="YemekReseptiSayti.ReseptTeklifEt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 32px;
            width: 285px;
        }
        .auto-style5 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style6 {
            height: 32px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style7 {
            text-align: right;
            font-weight: bold;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
            width: 285px;
        }
        .auto-style9 {
            width: 285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Resept Ad:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtReseptAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tərkib:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTerkib" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Hazırlanması:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtHazirlanmasi" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Şəkil:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="256px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resepti Təklif Edən:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtReseptiTeklifEden" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Poçt Ünvanı:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPoctUnvani" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnReseptTeklifEt" runat="server" style="font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #661A1A; margin-left: 47px;" Text="Resept Təklif Et" Width="185px" Height="43px" OnClick="btnReseptTeklifEt_Click" CssClass="fb8"  />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
