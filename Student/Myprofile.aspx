<%@ Page Title="" Language="VB" MasterPageFile="~/Student/Studentpage.master" AutoEventWireup="false" CodeFile="Myprofile.aspx.vb" Inherits="Student_Myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
            height: 28px;
        }
        .style20
        {
            width: 166px;
        }
        .style21
        {
            height: 28px;
            width: 166px;
        }
        .style22
        {
            height: 33px;
        }
        .style23
        {
            width: 166px;
            height: 29px;
        }
        .style24
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Size="20pt" ForeColor="#3399FF" 
                        Text="My Profile"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="style1" style="margin-bottom: 0px">
                        <tr>
                            <td class="style23">
                                <asp:Label ID="Label12" runat="server" Text="Student id :"></asp:Label>
                            </td>
                            <td class="style24">
                                <asp:TextBox ID="txtsid" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label5" runat="server" Text="First name :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label6" runat="server" Text="Last name :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label7" runat="server" Text="User name :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="Label8" runat="server" Text="City :"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label9" runat="server" Text="Email :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                <asp:Label ID="Label10" runat="server" Text="Mobile no. :"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:TextBox ID="txtmono" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label11" runat="server" Text="Gender :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label13" runat="server" Text="Date of Birth :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" class="style22">
                    <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
                <td class="style22">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnedit" runat="server" Text="Edit" />
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
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

