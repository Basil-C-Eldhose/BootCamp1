<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AM.Master" AutoEventWireup="true" CodeBehind="comView.aspx.cs" Inherits="S_Complaint.Admin.comView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
                background-image:url('https://images.unsplash.com/photo-1536859355448-76f92ebdc33d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRhcmslMjBjb2RlfGVufDB8fDB8fA%3D%3D&w=1000&q=80');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center" style="color:green;">Complaint View</h1>
    <br />
    <br />
    <h3 align="center" style="color:green;">Pending Complaints</h3>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="cid" OnRowEditing="GridView1_RowEditing" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="User Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="product" HeaderText="Product Name" />
            <asp:BoundField DataField="coname" HeaderText="Complaint" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:CommandField EditText="Process" HeaderText="Status Change" DeleteText="Process" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <br />
    <h3 align="center" style="color:green;">Processing Complaints</h3>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" align="center" AutoGenerateColumns="False" OnRowDeleting="GridView2_RowDeleting" DataKeyNames="cid" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="User Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="product" HeaderText="Product Name" />
            <asp:BoundField DataField="coname" HeaderText="Complaint" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:CommandField HeaderText="Status Change" DeleteText="Close" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <br />
    <h3 align="center" style="color:green;">Closed Complaints</h3>
    <br />
    <br />
    <asp:GridView ID="GridView3" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="cid" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="User Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="product" HeaderText="Product Name" />
            <asp:BoundField DataField="coname" HeaderText="Complaint" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="status" HeaderText="Status" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>

</asp:Content>
