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
        }
                   
           </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-family: Arial; text-align: left" 
            Text="Add student" CssClass="newStyle1"></asp:Label>
    </h2>
    <p>
        </p>
    <p>
        <table align="center" class="style1">
            <tr>
                <td class="lbl">
                    Student Name :</td>
                <td>
                    <asp:TextBox ID="txtsname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
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
                <td class="style10">
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
                <td class="lbl">
                    BirthDate :
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="txtdate" runat="server" CssClass="txt" Width="198px" 
                            TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Mobile :
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" MaxLength="10" 
                        TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Address :
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    City :
                </td>
                <td>
                    <asp:DropDownList ID="drpcity" runat="server">
                        <asp:ListItem>Select city</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Pincode :
                </td>
                <td>
                    <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Photo :
                </td>
                <td class="style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="lbl">
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
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnadd" runat="server" CssClass="btn" onclick="btnadd_Click" 
                        Text="ADD Student" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
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

