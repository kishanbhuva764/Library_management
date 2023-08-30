Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class Student_Myprofile
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim filepath As String
    Dim constring As String = ConfigurationManager.ConnectionStrings("constring").ToString()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Try
            con.ConnectionString = constring
            cmd.Connection = con
            con.Open()
            'cmd.CommandText = "select sid from tblstudregister wh"
            'Dim id = cmd.ExecuteScalar()
            'con.Close()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
       
    End Sub

End Class
