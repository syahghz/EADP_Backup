<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_THomepage.aspx.cs" Inherits="Syahs_Codes.S_THomepage" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 34px;
        }

        .auto-style3 {
            margin-bottom: 2px;
        }
        .auto-style4 {
            margin-top: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <div style="text-align: center;">
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome!" Font-Size="X-Large" Font-Bold="True"></asp:Label>
            <br />
            <br />
         

            <%-- Weather --%>
            <asp:Panel ID="pnlWeather" runat="server" BorderStyle="Solid" BorderColor="Crimson" CssClass="auto-style3" Height="50%">
                <br />
                <br />
                <br />
                
                <asp:Label ID="lblWeather" runat="server" Text="Weather" Font-Size="X-Large"></asp:Label>
                <br />
                <br />
                <br />
               
            </asp:Panel>

            <br />
                <br />
            <asp:Label ID="lblRecommended" runat="server" Text="Recomended for you" Font-Underline="True" Font-Italic="True" Font-Size="Medium"></asp:Label>

            <%-- Images --%>
            <div>
            <div style="display: inline-block;">
                <div class="auto-style4">
                    <br />
                <asp:ImageButton ID="imgBtn1" runat="server" ImageUrl="~/S_Images/USS.jpeg" Height="3cm" Width="3cm" />
                <div style="border: 1px solid rgb(220,20,60); padding: 5px;">
                    <asp:Panel ID="Pnl2" runat="server"  Width="3cm" Height="40px">
                        <div><asp:Label ID="lblImg1" runat="server" Text="Universal Studios Singapore"></asp:Label></div>
                    </asp:Panel>
                    </div>
                </div>
            </div>
            <div style="display: inline-block; margin-left: 7%;">
                <asp:ImageButton ID="imgBtn2" runat="server" ImageUrl="~/S_Images/mcD.jpeg" Height="3cm" Width="3cm" />
                <div style="margin-left: ; border: 1px solid rgb(220,20,60); width:3cm; padding: 5px;">
                    <asp:Panel ID="Panel2" runat="server" Width="3cm" CssClass="auto-style2" Height="40px">
                        <div style="padding-top: 10px; margin-left:-35%; width:3cm;">
                            <asp:Label ID="lblImg2" runat="server" Text="Mc Donald's"></asp:Label>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <div style="display: inline-block; margin-left: 5%;">
                <asp:ImageButton ID="imgBtn3" runat="server" ImageUrl="~/S_Images/SGPack.jpeg" Height="3cm" Width="3cm" />
                <div style="margin-left: ; border: 1px solid rgb(220,20,60); width:3cm; padding: 5px;">
                    <asp:Panel ID="Pnl3" runat="server" Width="3cm"  Height="40px">
                        <div style="padding-top: 10px; margin-left: -5%;">
                            <asp:Label ID="lblimg3" runat="server" Text="Family Package"></asp:Label></div>
                    </asp:Panel>
                </div>
            </div>
                </div>
        </div>
    </form>
</asp:Content>
