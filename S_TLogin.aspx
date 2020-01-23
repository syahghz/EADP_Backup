<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_TLogin.aspx.cs" Inherits="Syahs_Codes.S_TLogin" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylesheet/S_LoginStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>


            <%--<asp:Image ID="Image1" runat="server" Height="570px" Width="897px" />--%>

            <div class="loginDiv" style="text-align: center; border: 1px solid rgb(220,20,60); width: 50%; margin-left: 25%; margin-right: 25%; margin-top: 10%; margin-bottom: 10%;">
                <div>
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Visible="False">  <div class="alert alert-danger">
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div></asp:Panel>
                    <asp:Label ID="lblLogin" runat="server" Text="Login" Font-Underline="False" Style="font-weight: bold; font-size: 1em; border:solid;"></asp:Label>

                    <br />
                    <br />
                    <%-- Password --%>
                    <%-- login button --%>
                    <div>
                        <asp:Label ID="lblUsername" runat="server" Text="Username : " Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="tbUserName" runat="server" OnTextChanged="tbUserName_TextChanged"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="tbUserName" ErrorMessage="Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                    </div>
                    <br />
                    <%-- Password --%>
                    <div>
                        <asp:Label ID="lbPass" runat="server" Text="Password : " Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="tbPass" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                    </div>
                    <br />

                    <%-- login button --%>
                    <asp:Button ID="buttonLogin" runat="server" Text="Login" OnClick="buttonLogin_Click" />

                    <br />

                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    <br />
                    <br />
                </div>
            </div>
            <br />
        </div>
    </form>
</asp:Content>

