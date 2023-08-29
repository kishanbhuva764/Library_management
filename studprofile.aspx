<%@ Page Title="" Language="VB" MasterPageFile="~/studentpanel.master" AutoEventWireup="false" CodeFile="studprofile.aspx.vb" Inherits="studprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            height: 70px;
        }
        .style12
        {
        }
        .style13
        {
            width: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style10">
        <tr>
            <td align="center" class="style11" colspan="2" 
                style="border-style: ridge; border-width: medium; font-family: 'Bahnschrift Light SemiCondensed'; font-size: x-large; font-weight: bold">
                Profile</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                    Student id :</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                First Name&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Last&nbsp; Name&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                User Name&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Email :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Mobile no.&nbsp; :</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Gender :</td>
            <td>
                <asp:RadioButton ID="rdbmale" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdbfemale" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Date of Birth:</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                Profile Image :</td>
            <td>
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style12" colspan="2">
                <asp:Button ID="btnupdate" runat="server" Text="Update Profile" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

