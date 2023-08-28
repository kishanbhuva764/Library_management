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
        .style11
        {
            height: 26px;
        }
           
           </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-family: Arial; text-align: left" 
            Text="Add student"></asp:Label>
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
                        <asp:ListItem>It</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                        <asp:ListItem>Chemical</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    Gender&nbsp; :
                </td>
                <td align="left" class="style11">
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
                    <asp:DropDownList ID="drpbranch0" runat="server" CssClass="txt">
                        <asp:ListItem>+91</asp:ListItem>
                    </asp:DropDownList>
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
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Amreli</asp:ListItem>
                        <asp:ListItem>Anand</asp:ListItem>
                        <asp:ListItem>Aravalli</asp:ListItem>
                        <asp:ListItem>Banaskantha</asp:ListItem>
                        <asp:ListItem>Bharuch</asp:ListItem>
                        <asp:ListItem>Bhavnagar</asp:ListItem>
                        <asp:ListItem>Botad</asp:ListItem>
                        <asp:ListItem>Chhota Udaipur</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
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
                    Password :
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="lbl" TextMode="Password"></asp:TextBox>
                </td>
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
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="sname" HeaderText="Student Name" />
                            <asp:BoundField DataField="branch" HeaderText="Branch" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="birthdate" HeaderText="Birthdate" />
                            <asp:BoundField DataField="mono" HeaderText="Mobile no" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                        </Fields>
                    </asp:DetailsView>
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

