<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AM.Master" AutoEventWireup="true" CodeBehind="DateCom.aspx.cs" Inherits="S_Complaint.Admin.DateCom" %>
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
    <br />
    <h2 align="center" style="color:aliceblue;">Date Based Complaints</h2>
    <br />
    <table align="center" style="color:darkred;">
        <tr>
            <td>Start Date</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>End Date</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList><asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList>
                
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" class="btn btn-primary btn-lg"/></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="coname" HeaderText="Complaint" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:BoundField DataField="product" HeaderText="Product" />
            <asp:BoundField DataField="status" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
</asp:Content>
