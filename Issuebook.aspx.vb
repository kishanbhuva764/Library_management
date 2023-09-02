Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class Issuebook
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim constring As String = ConfigurationManager.ConnectionStrings("constring").ToString
    Sub clear()
        txtstudid.Text = ""
        txtsname.Text = ""
        DropDownList1.SelectedIndex = 0
        txtissuedate.Text = ""
        txtreturndate.Text = ""
      
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            con.ConnectionString = constring
            cmd.Connection = con
            cmd.CommandText = "select bname from tbladdbook"
            Dim da As New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)
            DropDownList1.DataSource = dt
            DropDownList1.DataTextField = "bname"
            DropDownList1.DataValueField = "bname"
            DropDownList1.DataBind()
        Catch ex As Exception
            Label7.Text = ex.Message
        End Try
        If IsPostBack = True Then
            'fillgrid()
        End If
    End Sub

    'sub fillgrid()
    '    try
    '        cmd.commandtext = "select * from tblissuebook order by id"
    '        da = new sqldataadapter(cmd)
    '        dt = new datatable
    '        da.fill(dt)
    '        gridview1.datasource = dt
    '        gridview1.databind()
    '    catch ex as exception
    '        label1.text = ex.message
    '    end try
    'end sub

    Protected Sub btngo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btngo.Click
        Try
            cmd.CommandText = "select fname from tblstudregister where sid = " & txtstudid.Text & ""
            con.Open()
            txtsname.Text = cmd.ExecuteScalar()
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnissue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnissue.Click
        Try
            cmd.CommandText = "insert into tblissuebook values(" & txtstudid.Text & ",'" & txtsname.Text & "','" & DropDownList1.SelectedItem.Text & "','" & txtissuedate.Text & "','" & txtreturndate.Text & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label7.Text = "Book issued succesfully"
            clear()
        Catch ex As Exception
            Label7.Text = ex.Message
        End Try
    End Sub
End Class
