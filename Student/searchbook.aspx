<%@ Page Title="" Language="VB" MasterPageFile="~/Student/Studentpage.master" AutoEventWireup="false" CodeFile="searchbook.aspx.vb" Inherits="Student_searchbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            width: 246px;
        }
        .style20
        {
            width: 246px;
            height: 28px;
        }
        .style21
        {
            height: 28px;
        }
        .style22
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" 
    Text="Search Books" 
                Height="55px" Width="265px" style="color: #FF6600" ForeColor="#FF0066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                <asp:Label ID="Label4" runat="server" Text="Enter Book name :"></asp:Label>
            </td>
            <td class="style21">
                <asp:TextBox ID="txtsearch" runat="server" Height="26px" Width="456px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Button ID="btnsearch" runat="server" Text="Search" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                <asp:Label ID="Lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" colspan="2" align="left">
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table   border=3px  width="700"  padding:"5px">
                    <tr >
                         <td >
                             <asp:Image ID="Image1" runat="server"  Width="200px"  Height="200px"  ImageUrl='<% #Eval("filepath") %>' BorderStyle="Solid" />
                        </td>
                     <td>
                     <table>
       
                        <td> 
                            <asp:Label ID="Label3" runat="server" Font-Size=X-Large Text='<% #Eval("bname") %>' Font-Bold="True" >'></asp:Label>
                        </td>
                    </tr>
                  <tr>
                        <td>
                             Author : <asp:Label ID="Label4" runat="server" Text='<% #Eval("author") %>' Font-Size="Larger">'></asp:Label>
                        </td>
                  </tr>
                  <tr>
                       <td >
                         Category : <asp:Label ID="Label5" runat="server" Text='<% #Eval("category") %>' Font-Size="Larger">'></asp:Label>
                         </td>
                    </tr>
                     <tr>
                        <td>
                             Publisher : <asp:Label ID="Label2" runat="server" Text='<% #Eval("publisher") %>' Font-Size="Larger">'></asp:Label>
                        </td>
                  </tr>
                  <tr>
                       <td >
                         Update Date : <asp:Label ID="Label6" runat="server" Text='<% #Eval("entrydate") %>' Font-Size="Larger">'></asp:Label>
                         </td>
                    </tr>
                     <tr>
                        <td>
                             Price : <asp:Label ID="Label7" runat="server" Text='<% #Eval("price") %>' Font-Size="Larger">'></asp:Label>
                        </td>
                  </tr>
                  <tr>
                       <td >
                         Quantity : <asp:Label ID="Label8" runat="server" Text='<% #Eval("quantity") %>' Font-Size="Larger">'></asp:Label>
                         </td>
                    </tr>
                    <tr>
                       <td >
                        Description : <asp:Label ID="Label9" runat="server" Text='<% #Eval("description") %>' Font-Size="Larger">'></asp:Label>
                         </td>
                    </tr>
                 </table>

                 </td>

               
            </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

