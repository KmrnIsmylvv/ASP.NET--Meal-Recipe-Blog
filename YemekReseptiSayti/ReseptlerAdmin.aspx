<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ReseptlerAdmin.aspx.cs" Inherits="YemekReseptiSayti.ReseptlerAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
            font-size: large;
        }

        .auto-style17 {
            width: 50px;
            height: 30px;
            background-color: #9966FF;
        }

        .auto-style15 {
            font-size: large;
            font-weight: bold;
        }

        .auto-style16 {
            height: 30px;
            background-color: #9966FF;
        }

        .auto-style10 {
            text-align: left;
        }

        .auto-style11 {
            text-align: right;
        }

        .auto-style18 {
            text-align: right;
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                    <td class="auto-style16"><strong>TƏSDİQLƏNƏN TƏKLİFLƏR</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="230px">
        <asp:DataList ID="DataList2" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("ReseptAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        
                          <a href="ReseptAdminDetal.aspx?ReseptId=<%# Eval("ReseptId") %>">
                              <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/İcons/offer.png" Width="30px" CssClass="auto-style7" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                    <td class="auto-style16"><strong>TƏSDİQLƏNMƏYƏN TƏKLİFLƏR</strong></td>
                </tr>
            </table>
            <asp:Panel ID="Panel5" runat="server" Height="235px">
                <asp:DataList ID="DataList3" runat="server" Width="447px">
                    <ItemTemplate>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text='<%# Eval("ReseptAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='ReseptAdminDetal.aspx?ReseptId=<%# Eval("ReseptId") %>'>
                                    <asp:Image ID="Image9" runat="server" CssClass="auto-style7" Height="30px" ImageUrl="~/İcons/offer.png" Width="30px" />
                                    </a></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
    </asp:Panel>

</asp:Content>
