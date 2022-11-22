<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AM.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="S_Complaint.Admin.Confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
                background-image:url('https://cdn.pixabay.com/photo/2020/01/22/12/33/python-4785225__340.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 align="center" style="color:firebrick;">User Confirmation</h1>
    <asp:GridView ID="GridView1" runat="server" Align="center" AutoGenerateColumns="False" DataKeyNames="lid" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="username" HeaderText="User Name" />
            <asp:BoundField DataField="password" HeaderText="Password" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:CommandField EditText="Confirm" HeaderText="Update" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <br />
    <h3 align="center">Confirmed users</h3>
    <br />
    <asp:GridView ID="GridView2" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="lid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="username" HeaderText="User Name" />
            <asp:BoundField DataField="password" HeaderText="Password" />
            <asp:BoundField DataField="status" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </asp:Content>
