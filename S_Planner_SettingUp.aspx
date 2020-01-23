<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_Planner_SettingUp.aspx.cs" Inherits="Syahs_Codes.S_Planner_SettingUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

        <style type="text/css">
            .auto-style2 {
                cursor: pointer;
                width: 38%;
            }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    
    <br />
    <div style="border: 1px solid rgb(220,20,60); padding: 10px; width: 70%; margin-left: 15%">
    <div style="text-align: center;">
        <asp:Label ID="lblTitle" runat="server" Text="Create New Itinerary Plan" Font-Size="Large" Font-Bold="True"></asp:Label>

    </div>

        <br />

        
         <%-- Plan Name --%>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="alert alert-dismissable alert-danger" />
            <div style=" text-align:center;">
                
                <br />
                <asp:RequiredFieldValidator ID="RFVPlanName" runat="server" ErrorMessage="Plan Name is Required!" Text="*" ControlToValidate="tbPlanName" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                <div style="display: inline-block">
                    <asp:Label ID="LblPlanName" runat="server" Text="Plan Name : "></asp:Label>
                </div>
                <div style="display: inline-block">
                    <asp:TextBox ID="tbPlanName" runat="server"></asp:TextBox>
                    
                </div>
            </div>



    <br />

    <div style="margin-left: 30%; display: inline-block;"><asp:Label ID="lblDateR" runat="server" Text="Date : "></asp:Label></div>





    
    <div id="dateRange" style="background: #fff; padding: 5px 10px; border: 1px solid #ccc; display:inline-block;" class="auto-style2">
        <i class="glyphicon glyphicon-calendar"></i>&nbsp;<asp:TextBox ID="tbDRange" runat="server" BorderStyle="None" Width="88%"></asp:TextBox>&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>
    </div>

    <script type="text/javascript">
        $(function () {

            var start = moment();
            var end = moment().add(2, 'days');

            var minD = moment().subtract(1, "days");

            function cb(start, end) {
                document.getElementById('<%=tbDRange.ClientID %>').value = (start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }

            $('#dateRange, #tbDRange').daterangepicker({
                startDate: start,
                endDate: end,
                showDropdowns: true,
                minYear: 2020,
                autoApply: true,
                minDate: moment()
            }, cb);

            cb(start, end);

        });

    </script>




            <br />
            <br />


            <%-- Image Upload --%>
            <div style="text-align:center;">

                <asp:Image ID="imgPlan" runat="server" ImageUrl="~/S_Images/sg_landscapee.PNG" Height="200px" Width="100%" BorderColor="Crimson" BorderStyle="Dashed" BorderWidth="1px" />

                <div style="margin-left:38%;">
                    <asp:FileUpload ID="ImgFileUploadPlan" runat="server" onChange="imgPreview(this)"/>

                    <script>
                        function imgPreview(input) {
                            if (input.files && input.files[0]) {
                                var reader = new FileReader();
                                reader.onload = function (e) {
                                    $('#<%=imgPlan.ClientID%>').prop('src', e.target.result)
                                        .width(200)
                                        .height(200);
                                };
                                reader.readAsDataURL(input.files[0]);
                                
                            }
                        }
                    </script>
                </div>
            
            </div>
            <br />
           
            <br />

            <%-- Cancel Next Buttons --%>
            <div style="text-align:center;">
                <div style="display: inline-block;">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="31px" Width="110px" OnClick="btnCancel_Click" NavigateUrl="~/S_Planner_Start.aspx"/>
                </div>
                <div style="display: inline-block; padding-left: 20%;">
                    <asp:Button ID="btnNext" runat="server" Text="Next" Height="31px" Width="110px" OnClick="btnNext_Click1"/>
                </div>
            </div>

            <br />
            
        




    </div>
    <br /><br />

    </form>
</asp:Content>
