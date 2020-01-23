<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_CreateNewPlan1.aspx.cs" Inherits="Syahs_Codes.S_CreateNewPlan1" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
<%--    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h1 style="text-align: center;">Create New Plan</h1>
    <form id="form1" runat="server">
    
        <%-- Container --%>
        <div style="border:2px solid rgb(200,20,60); width: 50%; margin-left:25%;">
            <br />

            <div id="SEDates" style="margin-left: 15%;">
                <%-- start date --%>
                <div style="display: inline-block;">
                    <asp:Label ID="lblStartdate" runat="server" Text="Start date"></asp:Label>
                </div>
                <div style="display: inline-block;">
                    <asp:TextBox ID="tbStartDate" runat="server" TextMode="Date"></asp:TextBox>
                </div>



                <%-- end date --%>
                <div style="display: inline-block; margin-left: 10px;">
                    <asp:Label ID="lblEndDate" runat="server" Text="End date"></asp:Label>
                </div>
                <div style="display: inline-block;">
                    <asp:TextBox ID="tbEndDate" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>

            <br />
            <br />


            <%-- Plan Name --%>
            <div style=" text-align:center;">
                <div style="display: inline-block">
                    <asp:Label ID="LblPlanName" runat="server" Text="Plan Name : "></asp:Label>
                </div>
                <div style="display: inline-block">
                    <asp:TextBox ID="tbPlanName" runat="server"></asp:TextBox>
                </div>
            </div>

            <br />
            <br />


            <%-- Image Upload --%>
            <div style="text-align:center;">

                <asp:Image ID="imgPlan" runat="server" ImageUrl="~/S_Images/uploadPicPlan.png" Height="190px" Width="190px" />

                <div style="margin-left:35%;"><asp:FileUpload ID="ImgFileUploadPlan" runat="server" /></div>
            </div>
            <br />
            <br />

            <%-- Cancel Next Buttons --%>
            <div style="text-align:center;">
                <div style="display: inline-block;">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="31px" Width="110px" />
                </div>
                <div style="display: inline-block; padding-left: 20%;">
                    <asp:Button ID="btnNext" runat="server" Text="Next" Height="31px" Width="110px" />
                </div>
            </div>

            <br />
            <br />


        </div>
        <br /><br />
    </form>



</asp:Content>
