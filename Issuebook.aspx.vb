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

    'Sub fillgrid()
    '    Try
    '        cmd.CommandText = "select * from tblissuebook order by id"
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable
    '        da.Fill(dt)
    '        GridView1.DataSource = dt
    '        GridView1.DataBind()
    '    Catch ex As Exception
    '        Label1.Text = ex.Message
    '    End Try
    'End Sub

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
            cmd.CommandText = "select bname from tbladdbook where bid =" & txtbookid.Text & " "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            If (dt.Rows.Count >= 1) Then
                txtbname.Text = "bname"

            End If

            cmd.CommandText = "select uname from tbladdbook where sid =" & txtstudid.Text & " "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            If (dt.Rows.Count >= 1) Then
                txtsname.Text = "uname"
            End If
            'fillgrid()

        Catch ex As Exception
            Label7.Text = ex.Message
        End Try
    End Sub

End Class
