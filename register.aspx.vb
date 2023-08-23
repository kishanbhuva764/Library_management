Imports System.Data.SqlClient
Imports System.Data

Partial Class register
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim str As String = ConfigurationManager.ConnectionStrings("constring").ConnectionString.ToString()


   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = str
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
    Sub clear()
        txtsid.Text = ""
        txtfname.Text = ""
        txtlname.Text = ""
        txtcpwd.Text = ""
        txtemail.Text = ""
        txtmo.Text = ""
        txtuname.Text = ""
    End Sub

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Try
            cmd.CommandText = "insert into tblstudent values(" & txtsid.Text & " , '" & txtuname.Text & "','" & txtcpwd.Text & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            clear()
            lblmsg.Text = "Register succesfully"
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
