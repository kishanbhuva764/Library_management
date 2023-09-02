<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="searchbook.aspx.vb" Inherits="searchbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13" style="background-color: #FFFFFF;">
    <tr>
        <td colspan="2" 
            
            style="font-family: 'Bahnschrift SemiBold'; font-size: 54px; color: #0099CC" 
            align="left" valign="middle" bgcolor="#FFCC66">
            &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" 
    Text="Search books" 
                Height="55px" Width="265px" style="color: #FF6600" ForeColor="#FF6600"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" align="left" class="style20">
            <asp:Label ID="Label2" runat="server" Text="Book name :"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtsearch" runat="server" AutoCompleteType="FirstName" 
                BorderStyle="Solid" EnableTheming="True" Height="26px" Width="463px"></asp:TextBox>
        &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left">
            <asp:Button ID="btnsearch" runat="server" Text="Search" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            <asp:Repeater ID="Repeater1" runat="server" >
            <ItemTemplate>
            <table   border=3px  width="500" "padding: 5px" style="border: medium solid #008000">
            <tr >
            <td >
                <asp:Image ID="Image1" runat="server" BorderWidth=5px BorderColor="#0099FF" Width="200px"  Height="200px"  ImageUrl='<% #Eval("filepath") %>' BorderStyle="Solid" /></td>
         <td>
         <table>
       
        <td> 
            <asp:Label ID="Label3" runat="server" Font-Size=X-Large Text='<% #Eval("bname") %>' Font-Bold="True" ForeColor="#FF9900">'></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
            Author : <asp:Label ID="Label4" runat="server" Text='<% #Eval("author") %>' Font-Size="Larger">'></asp:Label>
        </td>
        </tr>
  <tr>
        <td >
            Price : <asp:Label ID="Label5" runat="server" Text='<% #Eval("price") %>' Font-Size="Larger">'></asp:Label>
     
        </td>
        </tr>
         </table>
         </td>

           
            </ItemTemplate>
            </asp:Repeater>
        </td>
  
</table>
</asp:Content>

