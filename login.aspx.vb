Imports System.Data.SqlClient
Imports System.Data
Partial Class login
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
        txtpwd.Text = ""
        txtuname.Text = ""
    End Sub


   

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            con.Open()
            Session("uname") = txtuname.Text
            If txtsid.Text.Trim = "" Then
                lblmsg.Text = "Enter sid"
            ElseIf txtpwd.Text.Trim = " " Then
                lblmsg.Text = "Enter password"
            Else


                cmd.CommandText = "select pwd from tblstudent where sid= " & txtsid.Text & " "
                Dim pwd = cmd.ExecuteScalar()
                con.Close()

                If pwd.Equals(txtpwd.Text) Then
                    If txtsid.Text = "700" And txtpwd.Text = "admin" Then
                        Response.Redirect("home.aspx")
                    Else
                        Response.Redirect("Studdashboard.aspx")
                    End If

                    Session("isLogin") = True
                    Session("Uname") = txtuname.Text
                    Session("sid") = txtsid.Text


                Else
                    lblmsg.Text = "Incorrect password"
                End If
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
