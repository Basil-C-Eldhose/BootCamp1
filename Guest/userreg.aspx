<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GM.Master" AutoEventWireup="true" CodeBehind="userreg.aspx.cs" Inherits="S_Complaint.Guest.userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            .txtbox{
                -webkit-border-radius: 20px;
                -moz-border-radius: 5px;
                border-radius: 5px;
                width: 190px;
            }
            body {
                background-image:url('https://png.pngtree.com/thumb_back/fh260/background/20220112/pngtree-glass-morphim-effect-registration-banner-with-gradient-blue-image_934693.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
       td {
           padding: 20px;
       }
       
            
        </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <h1 align="center">User Registartion</h1>
    <br />
    <br />
    <table align="center">
        
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="name" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Age</td>
            <td>
                <asp:TextBox ID="age" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>email</td>
            <td>
                <asp:TextBox ID="email" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="uname" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="upass" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" class="btn btn-primary btn-lg"/></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-light btn-lg" OnClick="Button2_Click"/>
            </td>
        </tr>

    </table>
</asp:Content>
