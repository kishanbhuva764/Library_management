<%@ Page Title="" Language="VB" MasterPageFile="~/studentpanel.master" AutoEventWireup="false" CodeFile="studbooks.aspx.vb" Inherits="studbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="bid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="False" 
                ReadOnly="True" SortExpression="bid" />
            <asp:BoundField DataField="filepath" HeaderText="filepath" 
                SortExpression="filepath" />
            <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="entrydate" HeaderText="entrydate" 
                SortExpression="entrydate" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constring %>" 
        SelectCommand="SELECT * FROM [tbladdbook]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
</asp:Content>

