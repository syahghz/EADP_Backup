<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_WishList.aspx.cs" Inherits="Syahs_Codes.S_WishList" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">



    <%--<html>
<head runat="server">--%>
    <link href="Stylesheet/Wish_List.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>Wishlist</title>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <%-- Panel Food --%>
    <body>
        <form id="form1" runat="server">



            <br />
            <h2 style="text-align:center;">Your Wish List</h2>
            <br />
            <div class="container" style="width: 901px; border: 2px solid black;">
                <ul class="nav nav-tabs" style="margin-left: -15px; width: 901px; ">
                    <li class="active">
                        <asp:Button runat="server" Text="All" ID="BtnAll" OnClick="BtnAll_Click" href="#alll" Width="224px" Height="36px" CssClass="tabBtn" BackColor="Silver" /></li>
                    <li>
                        <asp:Button runat="server"  Text="Activities" Width="224px" Height="36px" CssClass="tabBtn"  ID="BtnAct" OnClick="BtnAct_Click" /></li>
                    <li>
                        <asp:Button runat="server"  href="#food" Text="Food" Width="224px" Height="36px" CssClass="tabBtn" ID="BtnFood" OnClick="BtnFood_Click" /></li>
                    <li>
                        <asp:Button runat="server"  href="#packages" Text="Packages" Width="225px" Height="36px" CssClass="tabBtn" ID="BtnPackage" OnClick="BtnPackage_Click" /></li>
                    <li>
                        <br />
                    </li>
                </ul>


                <br />
                <br />
                <%-- Panel Package --%>
                <asp:Panel ID="PnlAct" runat="server" Width="849px" Visible="True">
                    <asp:Image ID="ImgAct" runat="server" Height="74px" ImageUrl="~/S_Images/USS.jpeg" Width="93px" />
                    <div style="width: 75%; padding: 10px; display: inline-block;">
                        <asp:Label ID="lblAct" runat="server" Text="Universal Studios Singapore" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblActDet" runat="server" Text="A place full of wonder where movies come to life!"></asp:Label>
                    </div>
                    <div style="width: 7%; display: inline-block;">
                        <asp:Button  ID="BtnActCart" runat="server" Text="Add to Cart" CssClass="toCartBtn" /></div>
                    <hr />

                </asp:Panel>


                <br />

                <%-- Panel Food --%>
                <asp:Panel ID="PnlFood" runat="server" Width="849px">
                    <asp:Image ID="ImgFood" runat="server" Height="74px" ImageUrl="~/S_Images/mcD.jpeg" Width="93px" />
                    <div style="width: 75%; padding: 10px; display: inline-block;">
                        <asp:Label  ID="lblFood" runat="server" Text="Mc Donalds" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblFoodDet" runat="server" Text="I'm Lovin' It!"></asp:Label>
                    </div>
                    <div style="width: 7%; display: inline-block;">
                        <asp:Button  ID="BtnFoodCart" runat="server" Text="Add to Cart" CssClass="toCartBtn" Width="108px" /></div>
                    <hr />

                </asp:Panel>


                <br />

                <%-- Panel Package --%>
                <asp:Panel ID="PnlPackage" runat="server" Width="849px">
                    <asp:Image ID="ImgPackage" runat="server" Height="74px" ImageUrl="~/S_Images/SGPack.jpeg" Width="93px" />
                    <div style="width: 75%; padding: 10px; display: inline-block;">
                        <asp:Label ID="lblPackage" runat="server" Text="Family Package" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblPackageDet" runat="server" Text="2 Attractions for $80!"></asp:Label>
                    </div>
                    <div style="width: 7%; display: inline-block;">
                        <asp:Button ID="BtnPackageCart" runat="server" Text="Add to Cart" CssClass="toCartBtn" /></div>
                    <hr />

                </asp:Panel>


                <br />
            </div>






        </form>





        <br />





    </body>


</asp:Content>
