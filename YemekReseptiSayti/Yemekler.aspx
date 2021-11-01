<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekReseptiSayti.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
            font-size: large;
        }

        .auto-style10 {
            text-align: left;
        }

        .auto-style11 {
            text-align: right;
        }

        .auto-style15 {
            font-size: large;
            font-weight: bold;
        }

        .auto-style16 {
            height: 30px;
            background-color: #9966FF;
        }

        .auto-style17 {
            width: 50px;
            height: 30px;
            background-color: #9966FF;
        }

        .auto-style18 {
            height: 22px;
        }

        .auto-style19 {
            width: 50px;
            height: 30px;
            text-align: center;
            background-color: #9966FF;
        }

        .auto-style20 {
            height: 30px;
            text-align: center;
            background-color: #9966FF;
        }
        .auto-style21 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
        .auto-style22 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                    <td class="auto-style16"><strong>YEMƏKLƏR</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <itemtemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style11">
                            <a href="Yemekler.aspx?YemekId=<%# Eval("YemekId")%>&islem=sil">
                                <asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/İcons/delete 2.jpg" Width="30px" />
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="YemekEdit.aspx?YemekId=<%# Eval("YemekId") %>">
                             <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/İcons/update.png" Width="30px" />
                         </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                </strong></td>
                <td class="auto-style20"><strong>YEMƏK ƏLAVƏ ET</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3">Yemək Ad:</td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Yemək Tərkib:</td>
                <td>
                    <asp:TextBox ID="txtYemekTerkib" runat="server" CssClass="auto-style22" Height="100px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hazırlanması:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtHazirlanmasi" runat="server" CssClass="auto-style22" Height="192px" TextMode="MultiLine" Width="230px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Kateqoriya:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddlKateqoriya" runat="server" CssClass="auto-style22" Height="22px" Width="235px"  >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnElaveEt" runat="server" CssClass="auto-style21" Height="40px" Text="Əlavə Et" Width="139px" OnClick="btnElaveEt_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

