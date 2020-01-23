<%@ Page Title="" Language="C#" MasterPageFile="~/S_PlannerMaster.master" AutoEventWireup="true" CodeBehind="S_Planner_Main.aspx.cs" Inherits="Syahs_Codes.S_Planner_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <link href="Stylesheet/plannerStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />






    <%-- datetime --%>

    <%--    <link href="/path/to/tui-time-picker.css" rel="stylesheet">

    <script src="/path/to/jquery.min.js"></script>

    <script src="/path/to/tui-code-snippet.min.js"></script>

    <script src="/path/to/tui-time-picker.js"></script>--%>





    <link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
    <script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.js"></script>




    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>

    <%--    <script src="Scripts/jquery-duration-picker.js"></script>
    <link href="Stylesheet/jquery-duration-picker.css" rel="stylesheet" />--%>

    <%-- text editor --%>
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>


    <%-- timepicker eonas --%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>





    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">

    <style>
        .nav-pills > li > a, .nav-pills > li > a:focus {
            border: 1px solid rgb(220,20,60,0.5);
            padding: 8px;
            color: rgb(220,20,60,0.5);
            background-color: white;
        }

            .nav-pills > li > a:hover {
                background-color: rgb(220,20,60,0.4);
                color: white;
            }


        .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
            background-color: rgb(220,20,60,0.7);
            color: white;
        }


        /*table, td{
            border-collapse: collapse;
            border: 1px dashed rgb(220,20,60,0.7);
           
        }*/

        .FDetails {
            text-align: center;
        }

        .duration-picker-container {
            font-size: 14px;
        }



            .duration-picker-container select {
                width: 45px;
                display: inline-block;
                height: 26px;
                padding: 0;
                box-sizing: content-box;
                border-radius: 3px;
                margin-left: 10px;
                background: #fff;
                border: 1px solid #e1e1e1;
                font-size: 13px;
            }







        .flightTable, .accoTable, .actTable, .FnDTable {
            width: 200px;
            padding: 5px;
            border: 1px solid gray;
            text-align: center;
        }
    </style>





    <br />
    <div style="display: inline-block;">
        <div style="display: inline-block;">
            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                width="30" height="30"
                viewBox="0 0 48 48"
                style="fill: #000000; display: inline-block;">
                <path fill="#795548" d="M27,8h-6c-1.105,0-2,0.895-2,2v3c0,0.552,0.448,1,1,1h1v-4h6v4h1c0.552,0,1-0.448,1-1v-3C29,8.895,28.105,8,27,8"></path><path fill="#FF8F00" d="M41,12H7c-1.105,0-2,0.895-2,2v24c0,1.105,0.895,2,2,2h34c1.105,0,2-0.895,2-2V14C43,12.895,42.105,12,41,12"></path><path fill="#78909C" d="M9 11H12V12H9zM36 11H39V12H36z"></path><path fill="#D67C05" d="M13 12H15V40H13zM33 12H35V40H33z"></path><path fill="#FFECB3" d="M23 16A4 4 0 1 0 23 24A4 4 0 1 0 23 16Z"></path><path fill="#FFD180" d="M40 28.485L27.446 35 25 30.517 37.554 24z"></path></svg>
        </div>

        <asp:TextBox ID="tbItineraryName" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="XX-Large">Your Itinerary</asp:TextBox>
        <br />
        <br />
    </div>



    <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/S_Images/sg_landscapee.PNG" Width="100%" />

    <div style="border-right: 0.5px solid black; width: 50px; text-align: center; display: inline-block; font-size: 0.85em; height: 28px;">24 Jan</div>

    &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Width="672px">Day 1</asp:TextBox>
    &nbsp;&nbsp;
        <br />



    <asp:Button ID="btnNew" runat="server" Text="New Item" data-toggle="modal" data-target="#myModal" OnClientClick="return false" />



    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>

                    </button>
                    <h4 class="modal-title" id="myModalLabel">New Item</h4>
                    <!-- Nav tabs -->
                    <br />
                    <div class="container">

                        <ul class="nav nav-pills">
                            <li class="nav-item pillFlight active" style="display: inline-block"><a data-toggle="pill" href="#flight" class="glyphicon glyphicon-plane itemType" runat="server">Flight</a></li>
                            <li class="nav-item pillAccomo" style="display: inline-block"><a data-toggle="pill" href="#accomodation" class="glyphicon glyphicon-bed itemType">Accomodation</a></li>
                            <li class="nav-item pillAct" style="display: inline-block"><a data-toggle="pill" href="#activity" class="glyphicon glyphicon-calendar itemType">Activty</a></li>
                            <li class="nav-item pillFooD" style="display: inline-block"><a data-toggle="pill" href="#fooD" class="glyphicon glyphicon-cutlery itemType">Food/Drink</a></li>
                        </ul>
                        <script>
                            $("ul.nav-pills > li > a").click(function () {
                                var category = $(this).attr("href").replace("#", "");
                                document.getElementById("<%=lblCat.ClientID%>").innerHTML = category;

                            });
                        </script>
                    </div>


                </div>
                <div class="modal-body">
                    <div role="tabpanel">

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <asp:Label ID="lblCat" runat="server" Text="flight"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            <%--modal body--%>

                            <%-- FLIGHT --%>
                            <div id="flight" class="tab-pane fade in active">
                                <h3>Flight</h3>

                                <br />
                                <asp:Label ID="lblItemTitleFlight" runat="server" Text="Title : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <asp:TextBox ID="tbTitleFlight" runat="server" BorderStyle="Solid" BorderWidth="2px" BorderColor="#F7ACBD"></asp:TextBox>
                                <br />
                                <hr />
                                <asp:Label ID="lblTypeFlight" runat="server" Text="Type : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />
                                <br />

                                <asp:RadioButtonList ID="rblTypeFlight" runat="server" RepeatDirection="Horizontal" CellPadding="-1" Width="40%" RepeatColumns="2" OnSelectedIndexChanged="rblFlightType_SelectedIndexChanged" Font-Size="Small" ForeColor="#C05880">
                                    <asp:ListItem Value="Departure">Departure</asp:ListItem>

                                    <asp:ListItem Value="Arrival">Arrival</asp:ListItem>
                                </asp:RadioButtonList>
                                <hr />


                                <div style="display: inline-block;" class="col-lg-6">
                                    <asp:Label ID="lblTimePick" runat="server" Text="Time : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                    <br />




                                    <%--<div runat="server" id="timepicker-selectbox-Flight" style="padding: 0px; display: inline-block; color: #C05880;"></div>--%>

                                    <div id="" style="padding: 0px; display: inline-block; color: #C05880;"></div>



                                    <div class="row">
                                    <div class='col-sm-6 col-md-8'>
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker3' ">
                    
                                                <asp:TextBox ID="tbTimePick" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#datetimepicker3').datetimepicker({
                                                format: 'LT'
                                            });
                                        });
                                    </script>
                                </div>



<%--                                    <div class="container">
                                        <div class="row">
                                            <div class='col-sm-6'>
                                                <input type='text' class="form-control" id='datetimepicker4' />
                                            </div>
                                            <script type="text/javascript">
                                                $(function () {
                                                    $('#datetimepicker4').datetimepicker();
                                                });
                                            </script>
                                        </div>
                                    </div>--%>



                                </div>

                            </div>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblDurationFlight" runat="server" Text="Duration : " ForeColor="#C05880"></asp:Label>
                                <br />



                                <div class="form-group" style="width: 50%;" id="durationF" runat="server">

                                    <input type="text" class="form-control" id="durationFlight" />

                                </div>


                                <script>
                                    $(function () {
                                        $('#durationFlight').durationPicker();
                                        $('#duration2').durationPicker({ showSeconds: true, checkRanges: true, totalMax: 259200000 /* 3 days */ });
                                            //document.getElementById("<%=Label1.ClientID%>").innerHTML = document.getElementById("durationFlight");
                                            <%--var dFlight = document.getElementById("durationFlight").value;
                                            document.getElementById("<%=Label1.ClientID%>").innerHTML = dFlight;--%>

                                    });



                                </script>
                                <br />
                                <br />
                            </div>


                            <%--                                <div style="display: inline-block;" class="col-lg-6">
                                    <asp:Label ID="lblDurationFlight" runat="server" Text="Duration : " ForeColor="#C05880"></asp:Label>
                                    <br />



                                    <div class="form-group" style="width: 50%;">

                                        <input type="text" class="form-control" id="durationFlight" runat="server">
                                    </div>


                                    <script>
                                        $(function () {
                                            $('#durationFlight').durationPicker();
                                            $('#duration2').durationPicker({ showSeconds: true, checkRanges: true, totalMax: 259200000 /* 3 days */ });
                                        });
                                    </script>
                                    <br />
                                    <br />
                                </div>--%>


                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:Label ID="lblFDetFlight" runat="server" Text="Flight Details : " ForeColor="#C05880"></asp:Label>
                            <br />

                            <table>
                                <tr>
                                    <td class="flightTable">
                                        <asp:Label ID="lblWebBookFlight" runat="server" Text="Website Booked : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbWebBookFlight" runat="server" Width="100px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="flightTable">
                                        <asp:Label ID="lblConNoFlight" runat="server" Text="Confirmation No. : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbConNoFlight" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="flightTable">
                                        <asp:Label ID="lblAirlineFlight" runat="server" Text="Airline : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbAirlineFlight" runat="server" Width="66px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                </tr>

                                <tr>
                                    <td class="flightTable">
                                        <br />
                                        <asp:Label ID="lblFNoFlight" runat="server" Text="Flight No : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbFNoFlight" runat="server" Width="66px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />

                                    </td>

                                    <td class="flightTable">
                                        <asp:Label ID="lblTerFlight" runat="server" Text="Terminal : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbTerFlight" runat="server" Width="66px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="flightTable">
                                        <asp:Label ID="lblGateFlight" runat="server" Text="Gate : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbGateFlight" runat="server" Width="66px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            <hr />

                            <asp:Label ID="lblNotesFlight" runat="server" Text="Notes :" ForeColor="#C05880"></asp:Label>

                            <br />
                            <div id="editorFlight" style="height: 30%;">
                            </div>
                            <br />

                            <script>
                                var quill = new Quill('#editorFlight', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Write down your notes...',
                                    theme: 'snow'
                                });

                                var quill = new Quill('#editor-container', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link', 'blockquote', 'code-block', 'image'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Compose an epic...',
                                    theme: 'snow'
                                });
                            </script>
                            <hr />

                            <asp:Label ID="lblAttachFlight" runat="server" Text="Attachments :" ForeColor="#C05880"></asp:Label>

                            <asp:FileUpload ID="FUFliAttachFlight" runat="server" />

                            <hr />


                        </div>





                        <%-- ACCOMODATION --%>
                        <div id="accomodation" class="tab-pane fade">
                            <h3>Accomodation</h3>


                            <br />
                            <asp:Label ID="lblTitleAcco" runat="server" Text="Title : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                            <asp:TextBox ID="tbTitleAcco" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#F7ACBD"></asp:TextBox>
                            <br />
                            <hr />
                            <asp:Label ID="lblTypeAcco" runat="server" Text="Type : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                            <br />
                            <br />

                            <asp:RadioButtonList ID="RBLAcco" runat="server" RepeatDirection="Horizontal" CellPadding="-1" Width="40%" RepeatColumns="2" OnSelectedIndexChanged="rblFlightType_SelectedIndexChanged" Font-Size="Small" ForeColor="#C05880">
                                <asp:ListItem Value="Check_In">Check In</asp:ListItem>

                                <asp:ListItem Value="CHeck_Out">Check Out</asp:ListItem>
                            </asp:RadioButtonList>
                            <hr />


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblTimeAcco" runat="server" Text="Time : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />




                                <div id="timepicker-selectbox-Acco" style="padding: 0px; display: inline-block; color: #C05880;"></div>



                                <script>

                                    var tpSelectbox = new tui.TimePicker('#timepicker-selectbox-Acco', {
                                        initialHour: 3,
                                        initialMinute: 30,
                                        disabledHours: [1, 2, 14],
                                        inputType: 'selectbox'
                                    });




                                </script>
                            </div>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblDurationAcco" runat="server" Text="Duration : " ForeColor="#C05880"></asp:Label>
                                <br />



                                <div class="form-group" style="width: 50%;">

                                    <input type="text" class="form-control" id="durationAcco">
                                </div>


                                <script>
                                    $(function () {
                                        $('#durationAcco').durationPicker();
                                        $('#duration2').durationPicker({ showSeconds: true, checkRanges: true, totalMax: 259200000 /* 3 days */ });
                                    });
                                </script>
                                <br />
                                <br />
                            </div>


                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:Label ID="Label5" runat="server" Text="Accomodation Details : " ForeColor="#C05880"></asp:Label>
                            <br />

                            <table>
                                <tr>
                                    <td class="accoTable">
                                        <asp:Label ID="lblWebBookAcco" runat="server" Text="Website Booked : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbWebBookAcco" runat="server" Width="100px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="accoTable">
                                        <asp:Label ID="lblConNoAcco" runat="server" Text="Confirmation No. : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbConNoAcco" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td class="accoTable">
                                        <asp:Label ID="lblAddrAcco" runat="server" Text="Address : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbAddrAcco" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>


                            </table>
                            <hr />

                            <asp:Label ID="lblNotesAcco" runat="server" Text="Notes :" ForeColor="#C05880"></asp:Label>

                            <br />
                            <div id="editorAcco" style="height: 50%;">
                            </div>
                            <br />

                            <script>
                                var quill = new Quill('#editorAcco', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Write down your notes...',
                                    theme: 'snow'
                                });

                                var quill = new Quill('#editor-container', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link', 'blockquote', 'code-block', 'image'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Compose an epic...',
                                    theme: 'snow'
                                });
                            </script>
                            <hr />

                            <asp:Label ID="lblAttachAcco" runat="server" Text="Attachments :" ForeColor="#C05880"></asp:Label>

                            <asp:FileUpload ID="FUAcco" runat="server" />
                            <hr />

                        </div>




                        <%-- Activity --%>
                        <div id="activity" class="tab-pane fade">
                            <h3>Activity</h3>

                            <br />
                            <asp:Label ID="lblTitleAct" runat="server" Text="Title : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                            <asp:TextBox ID="tbTitleAct" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#F7ACBD"></asp:TextBox>
                            <br />
                            <hr />
                            <%--<asp:Label ID="lblTypeAct" runat="server" Text="Type : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />
                                <br />

                                <asp:RadioButtonList ID="RBLAct" runat="server" RepeatDirection="Horizontal" CellPadding="-1" Width="40%" RepeatColumns="2" OnSelectedIndexChanged="rblFlightType_SelectedIndexChanged" Font-Size="Small" ForeColor="#C05880">
                                    <asp:ListItem Value="Check_In">Check In</asp:ListItem>

                                    <asp:ListItem Value="CHeck_Out">Check Out</asp:ListItem>
                                </asp:RadioButtonList>
                                <hr />--%>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblTimeAct" runat="server" Text="Time : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />




                                <div id="timepicker-selectbox-Act" style="padding: 0px; display: inline-block; color: #C05880;"></div>



                                <script>

                                    var tpSelectbox = new tui.TimePicker('#timepicker-selectbox-Act', {
                                        initialHour: 3,
                                        initialMinute: 30,
                                        disabledHours: [1, 2, 14],
                                        inputType: 'selectbox'
                                    });




                                </script>
                            </div>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblDurationAct" runat="server" Text="Duration : " ForeColor="#C05880"></asp:Label>
                                <br />



                                <div class="form-group" style="width: 50%;">

                                    <input type="text" class="form-control" id="durationAct">
                                </div>


                                <script>
                                    $(function () {
                                        $('#durationAct').durationPicker();
                                        $('#duration2').durationPicker({ showSeconds: true, checkRanges: true, totalMax: 259200000 /* 3 days */ });
                                    });
                                </script>
                                <br />
                                <br />
                            </div>


                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:Label ID="lblActDet" runat="server" Text="Activity Details : " ForeColor="#C05880"></asp:Label>
                            <br />

                            <table>
                                <tr>
                                    <td class="actTable">
                                        <asp:Label ID="lblWebLinkAct" runat="server" Text="Website Link : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbWebLinkAct" runat="server" Width="200px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="actTable">
                                        <asp:Label ID="lblAddrAct" runat="server" Text="Address : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbAddrAct" runat="server" Width="200px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td class="actTable">
                                        <asp:Label ID="lblETixAct" runat="server" Text="E-Ticket No. : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbETixAct" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>

                                    <td class="actTable">
                                        <asp:Label ID="lblPriceAct" runat="server" Text="Price Per Person : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbPriceAct" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td class="actTable">
                                        <asp:Label ID="lblPaxAct" runat="server" Text="Pax : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbPaxAct" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td class="actTable">
                                        <asp:Label ID="lblTtlPriceAct" runat="server" Text="Total (price * pax) : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbTtlPriceAct" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>

                                </tr>


                            </table>
                            <hr />

                            <asp:Label ID="lblNotesAct" runat="server" Text="Notes :" ForeColor="#C05880"></asp:Label>

                            <br />
                            <div id="editorAct" style="height: 50%;">
                            </div>
                            <br />

                            <script>
                                var quill = new Quill('#editorAct', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Write down your notes...',
                                    theme: 'snow'
                                });

                                var quill = new Quill('#editor-container', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link', 'blockquote', 'code-block', 'image'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Compose an epic...',
                                    theme: 'snow'
                                });
                            </script>
                            <hr />

                            <asp:Label ID="lblAttachAct" runat="server" Text="Attachments :" ForeColor="#C05880"></asp:Label>

                            <asp:FileUpload ID="FUAct" runat="server" />
                            <hr />
                        </div>



                        <%-- Food and Drinks --%>
                        <div id="fooD" class="tab-pane fade">
                            <h3>Food and Drinks</h3>

                            <br />
                            <asp:Label ID="lblTitleFnD" runat="server" Text="Title : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                            <asp:TextBox ID="tbTitleFnD" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#F7ACBD"></asp:TextBox>
                            <br />
                            <hr />
                            <%--  <asp:Label ID="Label12" runat="server" Text="Type : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />
                                <br />

                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CellPadding="-1" Width="40%" RepeatColumns="2" OnSelectedIndexChanged="rblFlightType_SelectedIndexChanged" Font-Size="Small" ForeColor="#C05880">
                                    <asp:ListItem Value="Check_In">Check In</asp:ListItem>

                                    <asp:ListItem Value="CHeck_Out">Check Out</asp:ListItem>
                                </asp:RadioButtonList>
                                <hr />--%>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblTimeFnD" runat="server" Text="Time : " Font-Size="Medium" ForeColor="#C05880"></asp:Label>
                                <br />




                                <div id="timepicker-selectbox-FnD" style="padding: 0px; display: inline-block; color: #C05880;"></div>



                                <script>

                                    var tpSelectbox = new tui.TimePicker('#timepicker-selectbox-FnD', {
                                        initialHour: 3,
                                        initialMinute: 30,
                                        disabledHours: [1, 2, 14],
                                        inputType: 'selectbox'
                                    });




                                </script>
                            </div>


                            <div style="display: inline-block;" class="col-lg-6">
                                <asp:Label ID="lblDurationFnD" runat="server" Text="Duration : " ForeColor="#C05880"></asp:Label>
                                <br />



                                <div class="form-group" style="width: 50%;">

                                    <input type="text" class="form-control" id="durationFnD">
                                </div>


                                <script>
                                    $(function () {
                                        $('#durationFnD').durationPicker();
                                        $('#duration2').durationPicker({ showSeconds: true, checkRanges: true, totalMax: 259200000 /* 3 days */ });
                                    });
                                </script>
                                <br />
                                <br />
                            </div>


                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <hr />
                            <asp:Label ID="lblFnDDet" runat="server" Text="Details : " ForeColor="#C05880"></asp:Label>
                            <br />

                            <table>
                                <tr>
                                    <td class="FnDTable">
                                        <asp:Label ID="lblWebLinkFnD" runat="server" Text="Website Link : " ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbWebLinkFnD" runat="server" Width="100px" BorderColor="#F7ACBD" BorderStyle="Solid"></asp:TextBox>
                                        <br />
                                    </td>

                                    <td class="FnDTable">
                                        <asp:Label ID="lblAddrFnD" runat="server" Text="Address : " BorderStyle="None" ForeColor="#C05880"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="tbAddrFnD" runat="server" Width="100px" BorderStyle="Solid" BorderColor="#F7ACBD"></asp:TextBox>
                                        <br />
                                    </td>

                                </tr>


                            </table>
                            <hr />

                            <asp:Label ID="lblNotesFnD" runat="server" Text="Notes :" ForeColor="#C05880"></asp:Label>

                            <br />
                            <div id="editorFnD" style="height: 50%;">
                            </div>
                            <br />

                            <script>
                                var quill = new Quill('#editorFnD', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Write down your notes...',
                                    theme: 'snow'
                                });

                                var quill = new Quill('#editor-container', {
                                    modules: {
                                        toolbar: [
                                            ['bold', 'italic'],
                                            ['link', 'blockquote', 'code-block', 'image'],
                                            [{ list: 'ordered' }, { list: 'bullet' }]
                                        ]
                                    },
                                    placeholder: 'Compose an epic...',
                                    theme: 'snow'
                                });
                            </script>
                            <hr />

                            <asp:Label ID="lblAttachFnD" runat="server" Text="Attachments :" ForeColor="#C05880"></asp:Label>

                            <asp:FileUpload ID="FUFnD" runat="server" />
                            <hr />

                        </div>

                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <asp:Button ID="btnClear" runat="server" class="btn btn-default" Text="Clear" />
                <asp:Button ID="btnAdd" runat="server" class="btn btn-default" Text="Add Event" OnClick="btnAdd_Click" />
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary save">Save changes</button>--%>
            </div>
        </div>
    </div>
    </div>



















    <div class="container">
        <div class="panel-group" id="accordion">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Collapsible Group 1</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse in">
                    <div class="panel-body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Collapsible Group 2</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitati--%>on ullamco labor
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
