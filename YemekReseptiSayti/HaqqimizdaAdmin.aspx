<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HaqqimizdaAdmin.aspx.cs" Inherits="YemekReseptiSayti.HaqqimizdaAdmin" %>
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

        .auto-style18 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        font-size: large;
    }
    .auto-style19 {
        text-align: center;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style9">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                        </strong></td>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                        </strong></td>
                    <td class="auto-style16"><strong>HAQQIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:TextBox ID="txtHaqqimizda" runat="server" Width="438px" CssClass="tb5" Height="200px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <strong>
        <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style18" Height="51px" Text="Güncəllə" Width="157px" OnClick="btnGuncelle_Click" />
        </strong>
    </asp:Panel>
</asp:Content>
