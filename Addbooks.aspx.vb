Imports System.Data.SqlClient
Imports System.Data
Partial Class Addbooks
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
            lblmsg.text = ex.Message
        End Try
        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Try
            If FileUpload1.HasFile = True Then
                filepath = "~/images/Books/" + FileUpload1.FileName
                FileUpload1.SaveAs(Server.MapPath("~/images/Books/") + FileUpload1.FileName)

            Else
                lblmsg.Text = "select image"
            End If
            cmd.CommandText = "insert into tbladdbook values('" & filepath & "','" & txtbname.Text & "','" & txtauthor.Text & "','" & DropDownList1.SelectedItem.ToString & "','" & txtpublisher.Text & "','" & txtdate.Text & "'," & txtprice.Text & "," & DropDownList2.SelectedItem.ToString & ",'" & txtdetail.Text & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Record inserted"
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
