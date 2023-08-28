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
        .style11
        {
            text-align: right;
            color: black;
            height: 48px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tbl">
    <tr>
        <td class="style4">
            ADD NEW BOOK</td>
    </tr>
    <tr>
        <td class="style5">
            <table align="center" class="style1">
                <tr>
                    <td class="style8">
                        BookName :</td>
                    <td class="style9">
                        <asp:TextBox ID="txtbname" runat="server" CssClass="txt" Width="197px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Autor :
                    </td>
                    <td>
                        <asp:TextBox ID="txtauthor" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        Category :</td>
                    <td align="left" class="style14">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Programming</asp:ListItem>
                            <asp:ListItem>Mystery</asp:ListItem>
                            <asp:ListItem>Biography</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Short Story</asp:ListItem>
                            <asp:ListItem>Logic building</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        Publisher :</td>
                    <td class="style9">
                        <asp:TextBox ID="txtpublisher" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style8">
                        Update on :
                    </td>
                    <td align="left" class="style9">
                        <asp:TextBox ID="txtdate" runat="server" CssClass="txt" Width="198px" 
                            TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Price :
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server" CssClass="txt" Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Quantity&nbsp; :</td>
                    <td>
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
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Description : </td>
                    <td>
                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="24px" 
                            Width="199px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Book Photo :
                    </td>
                    <td class="style12">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <asp:Image ID="Image1" runat="server" />
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
                    <td class="style10">
                        </td>
                    <td class="style10">
                        <asp:Button ID="btnadd" runat="server" Text="Add book" />
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
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            AllowPaging="True" AutoGenerateEditButton="True" 
                            DataKeyNames="bid,filepath" AutoGenerateDeleteButton="True" Height="291px" 
                            Width="924px" >
                            <Columns>
                                <asp:BoundField DataField="bid" HeaderText="Book id" />
                                <asp:ImageField DataImageUrlField="filepath" HeaderText="Image">
                                    <ControlStyle Height="100px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="bname" HeaderText="Book name" />
                                <asp:BoundField DataField="author" HeaderText="Author" />
                                <asp:BoundField DataField="category" HeaderText="Category" />
                                <asp:BoundField DataField="publisher" HeaderText="Publisher" />
                                <asp:BoundField DataField="entrydate" HeaderText="Update on" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="description" HeaderText="Description" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

