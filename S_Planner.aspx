<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_Planner.aspx.cs" Inherits="Syahs_Codes.S_Planner" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 0;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br />
        <div style="text-align:center; border: 2px solid rgb(220,20,60);  width: 80%; margin-left:10%; ">
            <br />
            <%-- start/end date --%>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/S_Images/cat (2).PNG" />
        <br />
            <%-- trip type --%>
        <asp:Label ID="lblPlan" runat="server" Text="Trip to the zoooo" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        <br />
        <br />

            <div>
                <%-- plan dates details --%>
        <asp:Label ID="lblStartDate" runat="server" Text="Start Date : "></asp:Label>
        <asp:TextBox ID="tbstartdate" runat="server" Text="01/01/2020"></asp:TextBox>
        <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
        <asp:TextBox ID="tbEndDate" runat="server" Text="04/01/2020"></asp:TextBox>
        <br />
</div>
            <br />
            <div>
        <%-- trip type --%>
        <asp:Label ID="lblTriptype" runat="server" Text="Trip Type : "></asp:Label>
        <asp:TextBox ID="tbTripType" runat="server" CssClass="auto-style3" Text="Individual" Width="111px" ></asp:TextBox>
        <br />
        <br /></div>

            
        <%-- plan dates details --%>
            <div class="container" style="width: 901px; border: 2px solid black;">
                <ul class="nav nav-tabs" style="margin-left: -15px; width: 901px; ">
                    <li class="active">
                        <asp:Button runat="server" Text="01/01/2020" ID="btnDate1"  href="" Width="224px" Height="36px" CssClass="tabBtn" /></li>
                    <li>
                        <asp:Button runat="server"  Text="02/01/2020" Width="224px" Height="36px" CssClass="tabBtn"  ID="btnDate2" /></li>
                    <li>
                        <asp:Button runat="server"  href="" Text="03/01/2020" Width="224px" Height="36px" CssClass="tabBtn" ID="btnDate3" /></li>
                    <li>
                        <asp:Button runat="server"  href="" Text="04/01/2020" Width="224px" Height="36px" CssClass="tabBtn" ID="btnDate4" /></li>
                    
                    <li>
                        <br />
                    </li>
                </ul>
                <table style="width: 901px; margin-left: -15px; padding: 5px;  border: 1px solid black;">
                    <tr>
                        <td style=" border: 1px solid black;"><b>Time</b></td>
                        <td style=" border: 1px solid black;"><b>Details</b></td>
                        
                    </tr>
                    <tr>
                        <td style=" border: 1px solid black;">11 AM</td>
                        <td style=" border: 1px solid black;">Go take bus</td>
                        
                    </tr>
                    <tr>
                        <td style=" border: 1px solid black;">12 PM</td>
                        <td style=" border: 1px solid black;">Reach at destination</td>
                        
                    </tr>
                </table>

            </div>

            <br />
            <asp:Button ID="btnDone" runat="server" Height="33px" Text="Done" Width="83px" />
            <br /><br />

        </div>


    </form>
    <br />
</asp:Content>
