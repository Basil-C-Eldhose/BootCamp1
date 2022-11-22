<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GM.Master" AutoEventWireup="true" CodeBehind="loginForm.aspx.cs" Inherits="S_Complaint.Guest.loginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
            .txtbox{
                -webkit-border-radius: 20px;
                -moz-border-radius: 5px;
                border-radius: 5px;
                width: 190px;
            }
            body {
                background-image:url('https://kinneygroup.com/wp-content/uploads/2019/10/fw-bg-gradient.png');
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
       
            
        </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br /><br />
    <h1 align="center">Login</h1><br />
    <table align="center">
        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox id="uname" runat="server"  CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td> <asp:TextBox id="upass" runat="server"  CssClass="txtbox" textmode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Button id="button1" runat="server" Text="Sign In" class="btn btn-primary btn-lg" OnClick="Unnamed1_Click" />
            </td>
        </tr>
    </table>

    
</asp:Content>
