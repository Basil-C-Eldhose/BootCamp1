<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AM.Master" AutoEventWireup="true" CodeBehind="QryView.aspx.cs" Inherits="S_Complaint.Admin.QryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
                background-image:url('https://c4.wallpaperflare.com/wallpaper/817/1002/500/code-coding-dark-humor-wallpaper-preview.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 align="center" style="color:honeydew;">Queries</h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="qid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="product" HeaderText="Product" />
            <asp:BoundField DataField="qname" HeaderText="Query" />
            <asp:BoundField DataField="replay" HeaderText="Replay" />
            <asp:CommandField EditText="Replay" HeaderText="Action" ShowEditButton="True" UpdateText="Send" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    </asp:Content>
