Imports System.Data.SqlClient
Imports System.IO
Imports System.Data
Partial Class AddStudent
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
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub
    Sub fillgrid()
        Try
            cmd.CommandText = "select * from tbladdstudent order by sid"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            DetailsView1.DataSource = dt
            DetailsView1.DataBind()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Sub clear()
        txtsname.Text = ""
        drpbranch.SelectedIndex = 0
        txtdate.Text = ""
        txtmobile.Text = ""
        txtaddress.Text = ""
        txtpincode.Text = ""
        drpcity.SelectedIndex = 0
        txtemail.Text = ""
        filepath = ""
    End Sub
    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try
            If FileUpload1.HasFile = True Then
                filepath = "~/images/Books/" + FileUpload1.FileName
                FileUpload1.SaveAs(Server.MapPath("~/images/Books/") + FileUpload1.FileName)
            Else
                lblmsg.Text = "select image"
            End If
            cmd.CommandText = "insert into tbladdstudent values('" & txtsname.Text & "','" & drpbranch.SelectedItem.Text & "','" & RadioButtonList1.SelectedItem.Text & "','" & txtdate.Text & "','" & txtmobile.Text & "','" & drpcity.SelectedItem.Text & "','" & txtpincode.Text & "','" & txtemail.Text & "','" & filepath & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Record inserted"
            clear()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

End Class
