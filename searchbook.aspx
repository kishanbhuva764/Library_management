<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="searchbook.aspx.vb" Inherits="searchbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13" style="background-color: #FFFFCC;">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" 
    Text="Search books"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Book name :"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtsearch" runat="server" AutoCompleteType="FirstName" 
                BorderStyle="Solid" EnableTheming="True" Height="26px" Width="463px"></asp:TextBox>
        &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnsearch" runat="server" Text="Search" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <table>
            <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Width="200px" Height="200px"  ImageUrl='<% #Eval("filepath") %>' /></td>
         <td>
         <table>
        <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text='<% #Eval("bname") %>'>'></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text='<% #Eval("author") %>'>'></asp:Label>
        </td>
        </tr>
  <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text='<% #Eval("price") %>'>'></asp:Label>
     
        </td>
        </tr>
         </table>
         </td>
            </tr>
            </table>
            </ItemTemplate>
            </asp:Repeater>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

