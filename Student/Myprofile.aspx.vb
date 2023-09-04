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
    Dim sid As String
    Dim constring As String = ConfigurationManager.ConnectionStrings("constring").ToString()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            sid = Session("usid")
            con.ConnectionString = constring
            cmd.Connection = con
            txtsid.Text = sid
            fillcontrol(sid)
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
       
    End Sub

    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click
        Try
            cmd.CommandText = "update tblstudregister set fname = '" & txtfname.Text & "',lname='" & txtlname.Text & "',uname='" & txtuname.Text & "',city='" & txtcity.Text & "',email='" & txtemail.Text & "',mono='" & txtmono.Text & "',gender='" & txtgender.Text & "',dob='" & txtdate.Text & "' where sid = " & txtsid.Text & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            'fillcontrol()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
    Sub fillcontrol(ByVal sid As String)
        Try
            con.Open()
            cmd.CommandText = "select fname from tblstudregister where sid = " & txtsid.Text & ""
            txtfname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select lname from tblstudregister where sid = " & txtsid.Text & ""
            txtlname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select uname from tblstudregister where sid = " & txtsid.Text & ""
            txtuname.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select city from tblstudregister where sid = " & txtsid.Text & ""
            txtcity.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select email from tblstudregister where sid = " & txtsid.Text & ""
            txtemail.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select mono from tblstudregister where sid = " & txtsid.Text & ""
            txtmono.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select gender from tblstudregister where sid = " & txtsid.Text & ""
            txtgender.Text = cmd.ExecuteScalar()
            cmd.CommandText = "select dob from tblstudregister where sid = " & txtsid.Text & ""
            txtdate.Text = cmd.ExecuteScalar()
            con.Close()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
