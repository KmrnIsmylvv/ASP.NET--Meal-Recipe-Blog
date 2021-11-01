<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Serhler.aspx.cs" Inherits="YemekReseptiSayti.Serhler" %>

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
                    <td class="auto-style16"><strong>TƏSDİQLƏNƏN ŞƏRHLƏR </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("SerhAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Image ID="Image7" runat="server" Height="30px" ImageUrl="~/İcons/delete 2.jpg" Width="30px" /></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                             <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/İcons/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                    <td class="auto-style16"><strong>TƏSDİQLƏNMƏYƏN ŞƏRHLƏR </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList3" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text='<%# Eval("SerhAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style11">
                            <asp:Image ID="Image9" runat="server" Height="30px" ImageUrl="~/İcons/delete 2.jpg" Width="30px" /></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                           <a href="SerhlerDetal.aspx?SerhId=<%# Eval("SerhId")%>"> <asp:Image ID="Image10" runat="server" Height="30px" ImageUrl="~/İcons/update.png" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
