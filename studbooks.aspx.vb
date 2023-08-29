Imports System.Data.SqlClient
Imports System.Data

Partial Class studbooks
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim filepath As String
    Dim str As String = ConfigurationManager.ConnectionStrings("constring").ConnectionString.ToString()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = str
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try



    End Sub

    Sub fillgrid()
        Try
            cmd.CommandText = "select * from tbladdbook order by bid"
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
