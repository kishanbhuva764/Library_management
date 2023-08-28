Imports System.Data.SqlClient
Imports System.IO
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
            cmd.CommandText = "insert into tbladdbook values('" & filepath & "','" & txtbname.Text & "','" & txtauthor.Text & "','" & DropDownList1.SelectedItem.Text & "','" & txtpublisher.Text & "','" & txtdate.Text & "'," & txtprice.Text & ",'" & DropDownList2.SelectedItem.Text & "','" & txtdetail.Text & "')"
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

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        fillgrid()

    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        fillgrid()
    End Sub

   
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Try
        Dim vid As Integer = GridView1.DataKeys(e.RowIndex).Value
        Dim vimage As String = GridView1.DataKeys(e.RowIndex).Values("filepath").ToString

        cmd.CommandText = "delete from tbladdbook where bid=" & vid & ""
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblmsg.Text = "record deleted"
        fillgrid()

        Dim fileexist As String = Server.MapPath(vimage)
        If File.Exists(fileexist) Then
            File.Delete(fileexist)
        End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        fillgrid()
    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Try

            Dim vbname, vauthor, vpublisher, vupdate, vprice, vdesc, vqty, vcategory As New TextBox
            'Dim vqty, vcategory As New DropDownList
            'vqty.Items.Add("Programming")
            'vqty.Items.Add("History")
            'vqty.Items.Add("Biography")
            'vqty.Items.Add("Science")
            'vqty.Items.Add("Drama")
            'vqty.Items.Add("Mystry")
            'vqty.Items.Add("Short story")
            'vqty.Items.Add("Logic bulding")
            Dim vid As Integer = GridView1.DataKeys(e.RowIndex).Value

            vbname = GridView1.Rows(e.RowIndex).Cells(3).Controls(0)
            vauthor = GridView1.Rows(e.RowIndex).Cells(4).Controls(0)
            vcategory = GridView1.Rows(e.RowIndex).Cells(5).Controls(0)
            vpublisher = GridView1.Rows(e.RowIndex).Cells(6).Controls(0)
            vupdate = GridView1.Rows(e.RowIndex).Cells(7).Controls(0)
            vprice = GridView1.Rows(e.RowIndex).Cells(8).Controls(0)
            vqty = GridView1.Rows(e.RowIndex).Cells(9).Controls(0)
            vdesc = GridView1.Rows(e.RowIndex).Cells(10).Controls(0)



            cmd.CommandText = "update tbladdbook set bname = '" & vbname.Text & "',author ='" & vauthor.Text & "',category = '" & vcategory.Text & "',publisher='" & vpublisher.Text & "',entrydate='" & vupdate.Text & "',price=" & vprice.Text & ",quantity=" & vqty.Text & ",description='" & vdesc.Text & "' where bid = " & vid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Record update"
            fillgrid()
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    
End Class
