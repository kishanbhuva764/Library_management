Imports System.Data.SqlClient
Imports System.Data

Partial Class register
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim filepath As String
    Dim str As String = ConfigurationManager.ConnectionStrings("constring").ConnectionString.ToString()
    Dim statearray() As String = {
    "Ahmedabad",
       "Anand",
       "Bharuch",
       "Bhavnagar",
       "Gandhidham",
       "Gandhinagar",
       "Godhra",
       "Jamnagar",
       "Junagadh",
       "Mehsana",
       "Morbi",
       "Nadiad",
       "Navsari",
       "Pātan",
       "Porbandar",
       "Rajkot",
       "Surat",
       "Surendranagar",
       "Vadodara",
       "Vapi"
}

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For i As Integer = 0 To statearray.Length - 1
            DropDownList1.Items.Add(statearray(i))
        Next
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
            If FileUpload1.HasFile = True Then
                filepath = "~/images/Books/" + FileUpload1.FileName
                FileUpload1.SaveAs(Server.MapPath("~/images/Books/") + FileUpload1.FileName)

            Else
                lblmsg.Text = "select image"
            End If

            cmd.CommandText = "insert into tblstudregister values(" & txtsid.Text & " , '" & txtfname.Text & "','" & txtlname.Text & "','" & txtuname.Text & "','" & txtpwd.Text & "','" & txtcpwd.Text & "','" & DropDownList1.SelectedItem.Text & "','" & txtemail.Text & "','" & txtmo.Text & "','" & RadioButtonList1.SelectedItem.Text & "','" & txtdate.Text & "','" & filepath & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            clear()
            lblmsg.Text = "Register succesfully"
            Response.Redirect("login.aspx")
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
