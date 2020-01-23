<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="S_Report.aspx.cs" Inherits="Syahs_Codes.S_Report" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 235px;
        }
        .auto-style2 {
            margin-left: 237px;
        }




    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br />
    <br />

    <div style="text-align: center; border: 2px solid rgb(220,20,60);  width: 50%; margin-left:25%; "> 
        <br />
        <br />

        <asp:Label ID="lblReport" runat="server" Text="Reason for Report" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        
        <asp:CheckBoxList ID="cblReasons" runat="server" Width="318px" Height="187px" CssClass="auto-style2" OnSelectedIndexChanged="cblReasons_SelectedIndexChanged">
            <asp:ListItem Value="sus_acc">Suspicious Account</asp:ListItem>
           
            <asp:ListItem Value="Offensive_Behaviour">Offensive Behaviour</asp:ListItem>
            
            <asp:ListItem Value="Others" Text="Others : ">Others:</asp:ListItem>
         
        </asp:CheckBoxList>
        
            <asp:TextBox ID="tbOthers" runat="server" TextMode="MultiLine"></asp:TextBox>
       <br /><br />



        <br />
        <asp:Label ID="lblElaborate" runat="server" Text="Elaborate : "></asp:Label>
        <br />

        <asp:TextBox ID="TextBox1" runat="server" Height="36px" TextMode="MultiLine" Width="209px"></asp:TextBox>

        <br />
        <br />
        <br />
        <div style="display: inline-block;"><asp:Button ID="btnCancel" runat="server" Text="Cancel" /></div>
        
        <div style="padding-left:10%; display: inline-block;"><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></div>
        <br />
        <br />
    </div>









    </form>


</asp:Content>
