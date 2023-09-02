<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="Studentdetails.aspx.vb" Inherits="Studentdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13">
        <tr>
            <td colspan="2" bgcolor="#FFCC66">
                        <asp:Label ID="Label4" runat="server" Text="Student details" 
                    Font-Size="25pt" ForeColor="#FF6600"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="50px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sid" HeaderText="Student id">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fname" HeaderText="First name">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="lname" HeaderText="Last name">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="uname" HeaderText="User name">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="300px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="mono" HeaderText="Mobile no">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gender" HeaderText="Gender">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="dob" HeaderText="Date of Birth">
                        <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="stud" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="filepath" HeaderText="Image">
                            <ControlStyle Height="100px" Width="200px" />
                            <FooterStyle CssClass="studfoot" HorizontalAlign="Center" />
                            <HeaderStyle CssClass="stud" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
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
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
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

