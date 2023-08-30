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


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
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

    Protected Sub btnselect_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnselect.Click
        Try
            'cmd.CommandText = "insert into tblissuebook values(" & txtstudid.Text & "," & txtbookid.Text & ",'" & txtsname.Text & "','" & txtbname.Text & "','" & txtissuedate.Text & "','" & txtreturndate.Text & "')"
            'con.Open()
            'cmd.ExecuteNonQuery()
            'con.Close()
            'Label7.Text = "Record inserted"
            getname()

        Catch ex As Exception
            Label7.Text = ex.Message
        End Try
    End Sub


    Sub getname()
        Try
            con.Open()
            cmd.CommandText = "select bname from tbladdbook where bid =" & txtbookid.Text & " "
            Dim bname = cmd.ExecuteScalar()
            bname = txtbname.Text


            cmd.CommandText = "select uname from tblstudregister where sid =" & txtstudid.Text & " "
            Dim uname = cmd.ExecuteScalar()
            uname = txtsname.Text
            con.Close()


        Catch ex As Exception
            Label7.Text = ex.Message
        End Try
    End Sub

End Class
