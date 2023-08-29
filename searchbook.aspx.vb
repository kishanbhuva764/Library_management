Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class searchbook
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
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub
    Sub fillgrid()
        Try
            cmd.CommandText = "select * from tbladdbook order by bid"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            Repeater1.DataSource = dt
            Repeater1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Repeater1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles Repeater1.ItemCommand
        If (e.CommandName = "cmd") Then
            MsgBox("btn clicked")
        End If
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Try
            con.Open()
            cmd.CommandText = "select bid from tbladdbook where bname = '" & txtsearch.Text & "' "
            Dim temp As Integer = cmd.ExecuteScalar()
            If temp > 0 Then
                cmd.CommandText = "select * from tbladdbook where bname = '" & txtsearch.Text & "' order by bid "
                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)
                Repeater1.DataSource = dt
                Repeater1.DataBind()
                Label6.Text = "Book Found"
            Else
                Label6.Text = "No book Found Named " + txtsearch.Text
            End If
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
