<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_CreateNewPlan2.aspx.cs" Inherits="Syahs_Codes.S_CreateNewPlan2" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-bottom: 0;
        }
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <form id="form1" runat="server">
        <br /><br />
        <h1 style="text-align:center;">Plan Details</h1>
        <br />
        <div style="text-align: center; border: 2px solid rgb(220,20,60);  width: 50%; margin-left:25%; ">
            <br />
            <br />
            <%-- Date --%>
            <asp:Label ID="lblPlanDate" runat="server" Text="Date"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2">
                <asp:ListItem>01/01/2020</asp:ListItem>
                <asp:ListItem>02/01/2020</asp:ListItem>
                <asp:ListItem>03/01/2020</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <div>
                <div style="display: inline-block;">
                    <%-- Start Time --%>
                    <asp:Label ID="lblDetStartTime" runat="server" Text="Start Time : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Time"></asp:TextBox>

                </div>
                <div style="display: inline-block; padding-left: 5%;">
                    <%-- Duration --%>
                    <asp:Label ID="lblDuration" runat="server" Text="Duration : "></asp:Label>
                    <asp:TextBox ID="tbDetMin" runat="server"></asp:TextBox>
                    <asp:Label ID="lblMins" runat="server" Text="Minutes"></asp:Label>
                </div>
            </div>
            <br />
            <div>
                <%-- Activity name --%>
                <asp:Label ID="lblActName" runat="server" Text="Activity Name : "></asp:Label>
                <asp:TextBox ID="tbActName" runat="server"></asp:TextBox>
                <asp:Button ID="btnPickAct" runat="server" Text="Pick Attraction" />
            </div>
            <br />
            <div style="margin-left: 40%; ">
                <%-- Additional Details --%>
                <table style="width: 40%;border: 1px solid black; border-collapse:collapse;">
                    <tr >
                        <td style="border: 1px solid black;">Time</td>
                        <td style="border: 1px solid black;">Details</td>
                        
                    </tr>
                    <tr>
                        <td style="border: 1px solid black;">11 am</td>
                        <td style="border: 1px solid black;">take bus</td>
                       
                    </tr>
                    <tr>
                        <td style="border: 1px solid black;">12 pm</td>
                        <td style="border: 1px solid black;">go somewhere</td>
                       
                    </tr>
                </table>
            </div>


            <br />
            <div>
                <%-- cancel update/add button --%>
                <div style="display:inline-block;"><asp:Button ID="btnCancel" runat="server" Text="Cancel" /></div>
                <div style="display:inline-block; padding-left: 10%"><asp:Button ID="btnUpdateAdd" runat="server" Text="Add" /></div>
            </div>

            <br />

        </div>
        <br />



    </form>




</asp:Content>
