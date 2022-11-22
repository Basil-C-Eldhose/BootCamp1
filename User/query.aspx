<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserM.Master" AutoEventWireup="true" CodeBehind="query.aspx.cs" Inherits="S_Complaint.User.query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background:url('https://wallpaperaccess.com/full/314771.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="right" style="color:brown;">
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="User Name :"></asp:Label></td>
            <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="User Id :"></asp:Label></td>
            <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
    </table>


    <br />
    <h1 align="center" style="color:antiquewhite;">Queries</h1>
    <br />
    <table align="center" cols="10" rows="10" style="color:antiquewhite;">
        
        <tr>
            <td>Product Name</td>
            
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="product" DataValueField="product" style="color:black;"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S_ComplaintConnectionString %>" SelectCommand="SELECT [product] FROM [product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>

            <td>Enter Queries </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Style="color:blue;" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-primary btn-lg"/></td></tr>
    </table>

    <br />
    
    <h3 align="center" style="color:aquamarine;">Query Replays</h3>
    <br />
    
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="product" HeaderText="Product Name" />
            <asp:BoundField DataField="qname" HeaderText="Query Sent" />
            <asp:BoundField DataField="replay" HeaderText="Replay Received" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
     </asp:GridView>
</asp:Content>
