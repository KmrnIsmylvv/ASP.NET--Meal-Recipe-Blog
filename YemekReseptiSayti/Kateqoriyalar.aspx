<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kateqoriyalar.aspx.cs" Inherits="YemekReseptiSayti.Kateqoriyalar" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                    <td class="auto-style16"><strong>KATEQORIYALAR </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("KateqoriyaAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style11">
                            <a href="Kateqoriyalar.aspx?KateqoriyaId=<%# Eval("KateqoriyaId")%>&islem=sil">   <asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/İcons/delete 2.jpg" Width="30px" /></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="KateqoriyaEdit.aspx?KateqoriyaId=<%# Eval("KateqoriyaId") %>">
                             <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/İcons/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style20"><strong>KATEQORIYA ƏLAVƏ ET</strong></td>
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
                <td class="auto-style3"><strong>Kateqoriya Ad:</strong></td>
                <td>
                    <asp:TextBox ID="txtKateqoriyaAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Kateqoriya Şəkil:</strong></td>
                <td>
                    <asp:FileUpload ID="fpdKateqoriyaSekil" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnElaveEt" runat="server" CssClass="fb8" OnClick="btnElaveEt_Click" Text="Əlavə Et" Width="103px" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
