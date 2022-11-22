<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserM.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="S_Complaint.User.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        tr,td {
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 30px;
    padding-right: 40px;
        }
           body {
                background-image:url('https://appsamurai.com/wp-content/uploads/2018/04/shutterstock_1231981675.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table align="right">
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="User Name :"></asp:Label></td>
            <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="User Id :"></asp:Label></td>
            <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
    </table>
    
    

</asp:Content>
