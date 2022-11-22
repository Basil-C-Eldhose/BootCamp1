<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AM.Master" AutoEventWireup="true" CodeBehind="ProReg.aspx.cs" Inherits="S_Complaint.Admin.ProReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
                background-image:url('https://wallpaperaccess.com/full/2906282.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" style="color:cornsilk;">Product Registartion</h1>
    <table align="center" style="color:burlywood;">
        <tr>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="pname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="reg" runat="server" Text="Register" OnClick="reg_Click" class="btn btn-primary btn-lg"/></td>
        </tr>
    </table>
    <br />
    <br />
    <h2 align="center" style="color:cornsilk;">Product Details</h2>
    <br />
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="pid" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="product" HeaderText="Product Name" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</asp:Content>
