<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="AddStudent.aspx.vb" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

            
       .lbl
       {
           text-align:right;
           color:black;
           }
           
           .style8
        {
            text-align: right;
            color: black;
            height: 29px;
            width: 104px;
        }
        .style9
        {
            height: 29px;
        }
        .style10
        {
            text-align: right;
            color: black;
            height: 26px;
            width: 104px;
        }
                   
           .style21
        {
            width: 217px;
            height: 81px;
        }
        .txt
        {
            margin-left: 8px;
        }
        .style22
        {
            text-align: right;
            color: black;
            width: 104px;
        }
        .style23
        {
            width: 104px;
        }
                   
           </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="style1">
            <tr>
                <td class="style21" colspan="2" 
                    
                    style="font-family: 'Bahnschrift SemiBold'; font-size: 54px; color: #0099CC" 
                    align="left" bgcolor="#FFCC66">
                    &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Add new student" Font-Size="40pt" 
                        ForeColor="#FF6600" style="font-size: xx-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                    <td class="style23" align="left">
                        BookName :</td>
                <td>
                    <asp:TextBox ID="txtsname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    Branch :
                </td>
                <td>
                    <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                        <asp:ListItem>Select branch</asp:ListItem>
                        <asp:ListItem>Information Technology</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style10" align="left">
                    Gender&nbsp; :
                </td>
                <td align="left" class="lbl">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        style="text-align: left">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    BirthDate :
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="txtdate" runat="server" CssClass="txt" Width="198px" 
                            TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8" align="left">
                    Mobile :
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" MaxLength="10" 
                        TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8" align="left">
                    Address :
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    City :
                </td>
                <td>
                    <asp:DropDownList ID="drpcity" runat="server">
                        <asp:ListItem>Select city</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    Pincode :
                </td>
                <td>
                    <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8" align="left">
                    Photo :
                </td>
                <td class="style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    Email :
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnadd" runat="server" CssClass="btn" onclick="btnadd_Click" 
                        Text="ADD Student" />
                </td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

