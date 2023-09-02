Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class Student_myissuebook
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim filepath As String
    Dim constring As String = ConfigurationManager.ConnectionStrings("constring").ToString()

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.Open()
            con.ConnectionString = constring
            cmd.Connection = con
            'cmd.CommandText = "select * from tblissuebook order by id"
            'Dim id = cmd.ExecuteScalar()
            'con.Close()
            If id.Equals(Label5.Text) Then
                fillgrid()
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub
    Sub fillgrid()
        Try
            cmd.CommandText = "select * from tblissuebook "
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
