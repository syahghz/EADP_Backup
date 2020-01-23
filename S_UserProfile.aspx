<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_UserProfile.aspx.cs" Inherits="Syahs_Codes.S_UserProfile" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }


        </style>
    
    <link href="Stylesheet/Profile_S.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <br />
        <h2 style="text-align: center;">UserName's Profile</h2>
        <div style="margin-left: 590px;">
            <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl="~/S_Images/user.png" Width="85px" />
        </div>
        <div style="display: inline-block;">
            <div style="margin-left: 550px; display: inline-block;" class="auto-style2">
                <asp:Image ID="ImgLocation" runat="server" Height="15px" ImageUrl="~/S_Images/red_location.jpg" Width="15px" />
            </div>
            Johor Baharu, Malaysia
        </div>
        <div style="text-align: center;">
            <asp:LinkButton ID="LinkButton1" runat="server">Report User</asp:LinkButton>
        </div>


        <br />
        <div style="margin-left: 27%;">
            <asp:Label ID="lblUserDet" runat="server" Text="About UserName:"></asp:Label>
        </div>
        <div style="margin-left: 27%;">
            <asp:Panel ID="PnlUserDet" runat="server" Width="60%" BorderStyle="Solid">
                <asp:Label ID="lblUserLang" runat="server" Text="Language Spoken :"></asp:Label>
                <br />
                <asp:TextBox ID="tbUserLang" runat="server" ReadOnly="True">English, Malay</asp:TextBox>
                <br />
                <br />

            </asp:Panel>
        </div>
        <br />

        <br />
        <div style="margin-left: 27%;">
            <div><asp:Label ID="lblPlanner" runat="server" Text="Your Planner :"></asp:Label></div>
            <br />
            <div style="display:inline-block;">
                <div style="margin-left: 20%;"><asp:ImageButton ID="ImgBtnAdd" runat="server" Height="1.5cm" ImageUrl="~/S_Images/redAddPlan.PNG" Width="1.5cm" Style="" CssClass="planBtn"  /></div>
                
                <asp:Label ID="LblAddPlan" runat="server" Text="Create New Plan"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
            <div style="display:inline-block;">
                <div style="margin-left: 20%;"><asp:ImageButton ID="imgBtnPlan1" runat="server" Height="1.5cm" ImageUrl="~/S_Images/cat (2).PNG" Width="1.5cm" CssClass="planBtn" /></div>
              
                <asp:Label ID="lblPlan1" runat="server" Text="Trip to the zoooo"></asp:Label>
               
                
            </div>
        </div> 
        <br />
        <br />






    </form>



</asp:Content>
