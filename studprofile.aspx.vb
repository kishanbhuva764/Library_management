Imports System.Data.SqlClient
Imports System.Data

Partial Class studprofile
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim sid As Integer
    Dim str As String = ConfigurationManager.ConnectionStrings("constring").ConnectionString.ToString()



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = str
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
        Try
            con.Open()
            cmd.CommandText = "select fname from tblstudragister where sid = '" & Session("sid") & "'"
            txtfname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select lname from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select uname from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select email from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select mobile from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select gender from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select dob from tblstudragister where sid = '" & Session("sid") & "'"
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select filepath from tblstudragister  sid = '" & Session("sid") & "' "
            Image1.ImageUrl = cmd.ExecuteScalar()
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception

        End Try
    End Sub

    Sub clear()
        txtid.Text = ""
        txtfname.Text = ""
        txtlname.Text = ""
        txtemail.Text = ""
        txtmobile.Text = ""
        txtuname.Text = ""
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            Dim imgpath As String = "  "
            If FileUpload1.HasFile = True Then
                FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName)
                imgpath = "~/images/" + FileUpload1.FileName
                cmd.CommandText = "update tblstudragister set filepath='" & imgpath & "',fname='" & txtfname.Text & "',lname='" & txtlname.Text & "',uname='" & txtuname.Text & "',email='" & txtemail.Text & "',mobile=" & txtmobile.Text & ",gender='" & rdbmale.Text & "',dob='" & txtdate.Text & "' where sid='" & txtid.Text & "'"
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            Else
                con.Open()
                cmd.CommandText = "select img from tblprofilemst where sid ='" & Session("sid") & "' "
                imgpath = cmd.ExecuteScalar()
                cmd.CommandText = "update tblstudragister set filepath='" & imgpath & "',fname='" & txtfname.Text & "',lname='" & txtlname.Text & "',uname='" & txtuname.Text & "',email='" & txtemail.Text & "',mobile=" & txtmobile.Text & ",gender='" & rdbmale.Text & "',dob='" & txtdate.Text & "' where sid='" & txtid.Text & "'"
                cmd.ExecuteNonQuery()
                con.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
