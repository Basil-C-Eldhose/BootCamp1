<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserM.Master" AutoEventWireup="true" CodeBehind="comreg.aspx.cs" Inherits="S_Complaint.User.comreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body {
                background-image:url('http://lawwallet.in/wp-content/uploads/2021/06/complaint.jpg');
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                }
         h3{
                font-size:25px;
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


    <br />
    <h2 align="center" style="color:blue;">Complaint Registation</h2>
    <br />
    <table align="center" cols="10" rows="10">
        
        <tr>
            <td>Product Name</td>
            
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="product" DataValueField="product"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S_ComplaintConnectionString %>" SelectCommand="SELECT [product] FROM [product]"></asp:SqlDataSource>

            </td>
        </tr>
        <tr>

            <td>Complaint  </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td>
                </td>
            <td><asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" class="btn btn-primary btn-lg"/></td>
            
        </tr>
        <tr>
            <td></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <h3 align="center" style="color:blue;">Complaint Status</h3>
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="product" HeaderText="Product" />
            <asp:BoundField DataField="coname" HeaderText="Complaint" />
            <asp:BoundField DataField="status" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
</asp:Content>
