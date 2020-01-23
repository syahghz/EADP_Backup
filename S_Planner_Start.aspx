<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_Planner_Start.aspx.cs" Inherits="Syahs_Codes.S_Planner_Start" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="w3-row-padding w3-margin-top" style="width: 70%; margin-left: 20%">
        <div class="w3-third">
            <div class="w3-card" style="width: 50%">

                <img class="card-img-top" src="S_Images/travel.jpg" alt="Card image" style="width: 100%" />
                <div class="card-body w3-container w3-center">
                    
                    <a href="S_Planner_SettingUp.aspx" class="btn btn-primary stretched-link">New Itinerary</a>
                </div>
            </div>
        </div>

        <div class="w3-third">
            <div class="w3-card" style="width: 50%">

                <img class="card-img-top" src="S_Images/travel.jpg" alt="Card image" style="width: 100%" />
                <div class="card-body w3-container w3-center">
                    <h4 class="card-title">John Doe</h4>
                    <a href="#" class="btn btn-primary stretched-link">See Profile</a>
                </div>
            </div>
        </div>



        <div class="w3-third">
            <div class="w3-card" style="width: 50%">

                <img class="card-img-top" src="S_Images/travel.jpg" alt="Card image" style="width: 100%" />
                <div class="card-body w3-container w3-center">
                    <h4 class="card-title">John Doe</h4>
                    <a href="#" class="btn btn-primary stretched-link">See Profile</a>
                </div>
            </div>
        </div>

    </div>









    <%-- 
<div class="container">
  <h2>Card Image</h2>
  <p>Image at the top (card-img-top):</p>
  <div class="card w3-card-4" style="width:30%">
    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-body w3-container w3-center">
      <h4 class="card-title">John Doe</h4>

      
    </div>
    
  </div>--%>
    <br>
</asp:Content>
