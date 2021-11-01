<%@ Page Title="" Language="C#" MasterPageFile="~/Istifadeci.Master" AutoEventWireup="true" CodeBehind="GununYemeyi.aspx.cs" Inherits="YemekReseptiSayti.GununYemeyi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 3px">
        <ItemTemplate>
            <table class="auto-style1" style="width: 102%">
                <tr>
                    <td>
                        <table class="auto-style1" style="width: 100%">
                            <tr>
                                <td>
                                    <div class="auto-style4">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Style="font-weight: 700; font-size: x-large; text-align: center;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </div>
                                    <table class="auto-style1" style="width: 99%">
                                        <tr>
                                            <td class="auto-style4"><strong>Tərkibi</strong>:
                                                <asp:Label ID="Label4" runat="server" Style="text-align: left" Text='<%# Eval("YemekIngredient") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4"><strong>Hazırlanması</strong>:
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekResept") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center">
                                                <asp:Image ID="Image1" runat="server" Height="169px" ImageUrl='<%# Eval("YemekSekil") %>' Style="text-align: center" Width="342px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style4">
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td><strong>Xal</strong>:&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekXal") %>'></asp:Label>
                                                            &nbsp;&nbsp;</td>
                                                        <td class="auto-style5"><strong>Tarix</strong>:&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarix") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td class="auto-style5">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
