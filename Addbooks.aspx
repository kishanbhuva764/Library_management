<%@ Page Title="" Language="VB" MasterPageFile="~/librarymaster.master" AutoEventWireup="false" CodeFile="Addbooks.aspx.vb" Inherits="Addbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
    .tbl
    {
        width:100%;
        border:solid 1px #ddd;
        
        background:#FFF;
        }
        
        .lbl
       {
           text-align:right;
           color:black;
           }
           
           .style8
    {
        text-align: right;
        color: black;
        height: 34px;
        width: 341px;
    }
    .style9
    {
        height: 34px;
    }
        .txt
        {}
        .style10
        {
            height: 33px;
        }
        .style12
        {
            height: 48px;
        }
        .style13
        {
            text-align: right;
            color: black;
            height: 29px;
        }
        .style14
        {
            height: 29px;
        }
        .style17
        {
        text-align: right;
        color: black;
        width: 341px;
    }
        .style18
        {
            text-align: right;
            color: black;
            height: 29px;
            width: 10%;
        }
        .style19
        {
            width: 10%;
        }
        .style20
        {
            height: 33px;
            width: 341px;
        }
        .style21
    {
        text-align: right;
        color: black;
        height: 29px;
        width: 341px;
    }
    .style22
    {
        width: 100%;
        margin-right: 105px;
        height: 29px;
    }
    .style23
    {
        width: 341px;
    }
    .style25
    {
        text-align: right;
        color: black;
        height: 2px;
        width: 341px;
    }
    .style26
    {
        height: 2px;
    }
    .style27
    {
        text-align: right;
        color: black;
        width: 341px;
        height: 27px;
    }
    .style28
    {
        height: 27px;
    }
    .style29
    {
        text-align: right;
        color: black;
        width: 341px;
        height: 32px;
    }
    .style30
    {
        height: 32px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tbl">
    <tr>
        <td class="style5" align="left">
            <table align="center" class="style1" style="margin-top: 0px">
                <tr>
                    <td align="left" colspan="2" 
                        
                        style="font-family: 'Bahnschrift SemiBold'; font-size: 54px; color: #0099CC" 
                        bgcolor="#FFCC66">
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Add New Book" Font-Size="40pt" 
                            ForeColor="#FF6600" style="font-size: xx-large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style25" align="right">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style25" align="right">
                        <asp:Label ID="Label5" runat="server" Text="Book Name :"></asp:Label>
                    </td>
                    <td class="style26">
                        &nbsp;
                        <asp:TextBox ID="txtbname" runat="server" CssClass="txt" Width="197px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style25" align="right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="style25">
                    </td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        Autor :
                    </td>
                    <td>
                        &nbsp;
                        <asp:TextBox ID="txtauthor" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style25" align="left">
                        &nbsp;</td>
                    <td align="left" class="style25">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21" align="left">
                        Category :</td>
                    <td align="left" class="style22">
                        &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Mystery</asp:ListItem>
                            <asp:ListItem>Biography</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Short Story</asp:ListItem>
                            <asp:ListItem>Logic building</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style25" align="left">
                        </td>
                    <td class="style25">
                    </td>
                </tr>
                <tr>
                    <td class="style8" align="left">
                        Publisher :</td>
                    <td class="style9">
                        &nbsp;
                        <asp:TextBox ID="txtpublisher" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="style25">
                        &nbsp;</td>
                    <td align="left" class="style25">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="style8">
                        Update on :
                    </td>
                    <td align="left" class="style9">
                        &nbsp;
                        <asp:TextBox ID="txtdate" runat="server" CssClass="txt" Width="198px" 
                            TextMode="Date"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        Price :
                    </td>
                    <td>
                        &nbsp;
                        <asp:TextBox ID="txtprice" runat="server" CssClass="txt" Width="199px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        Quantity&nbsp; :</td>
                    <td>
                        &nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>more</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style29" align="left">
                        Description :</td>
                    <td class="style30">
                        &nbsp;
                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="24px" 
                            Width="199px"></asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style27" align="left">
                    </td>
                    <td class="style28">
                    </td>
                </tr>
                <tr>
                    <td class="style17" align="left">
                        Book Photo :
                    </td>
                    <td class="style12">
                        &nbsp;
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="style23">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        </td>
                    <td class="style10">
                        <asp:Button ID="btnadd" runat="server" Text="Add book" />
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            AllowPaging="True" AutoGenerateEditButton="True" 
                            DataKeyNames="bid,filepath" AutoGenerateDeleteButton="True" Height="291px" 
                            Width="1200px" CssClass="data" >
                            <Columns>
                                <asp:BoundField DataField="bid" HeaderText="Book id" >
                                <ControlStyle CssClass="#0099FF" Font-Bold="True" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="filepath" HeaderText="Image">
                                    <ControlStyle Height="100px" Width="100px" CssClass="#0099FF" />
                                    <HeaderStyle CssClass="bound" />
                                </asp:ImageField>
                                <asp:BoundField DataField="bname" HeaderText="Book name" >
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="author" HeaderText="Author" >
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="category" HeaderText="Category" >
                                <ControlStyle CssClass="bound" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="publisher" HeaderText="Publisher" >
                                <ControlStyle CssClass="bound" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="entrydate" HeaderText="Update on" >
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price" >
                                <ControlStyle CssClass="bound" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                                <ControlStyle CssClass="bound" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                                <asp:BoundField DataField="description" HeaderText="Description" >
                                <ControlStyle CssClass="bound" />
                                <HeaderStyle CssClass="bound" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

