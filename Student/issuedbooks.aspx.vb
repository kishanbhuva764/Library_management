Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class Student_issuedbooks
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim constring As String = ConfigurationManager.ConnectionStrings("constring").ToString


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'lblmsg.Text = Session("usid")
            con.ConnectionString = constring
            cmd.Connection = con
            If IsPostBack = False Then
                fillgrid()
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Sub fillgrid()
        Try
            cmd.CommandText = "select * from tblissuebook where studentid = " & Session("usid") & ""
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
