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
    Dim brancharray() As String = {
        "Computer Science",
    "Electrical Engineering",
    "Mechanical Engineering",
    "Civil Engineering",
    "Chemical Engineering",
    "Biomedical Engineering",
    "Aerospace Engineering",
    "Environmental Science",
    "Physics",
    "Chemistry",
    "Biology",
    "Mathematics",
    "Economics",
    "Business Administration",
    "Psychology",
    "Sociology",
    "History",
    "Political Science",
    "English",
    "Foreign Languages",
    "Law",
    "Medicine",
    "Nursing",
    "Education",
    "Fine Arts",
    "Music",
    "Architecture",
    "Film Studies",
    "Journalism",
    "Social Work"}
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For i As Integer = 0 To statearray.Length - 1
            drpcity.Items.Add(statearray(i))
        Next
        For i As Integer = 0 To brancharray.Length - 1
            drpbranch.Items.Add(brancharray(i))
        Next
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then
            'fillgrid()
        End If
    End Sub
    'Sub fillgrid()
    '    Try
    '        cmd.CommandText = "select * from tbladdstudent order by sid"
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable
    '        da.Fill(dt)
    '        DetailsView1.DataSource = dt
    '        DetailsView1.DataBind()
    '    Catch ex As Exception
    '        lblmsg.Text = ex.Message
    '    End Try
    'End Sub

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
                cmd.CommandText = "insert into tbladdstudent values('" & txtsname.Text & "','" & drpbranch.SelectedItem.Text & "','" & RadioButtonList1.SelectedItem.Text & "','" & txtdate.Text & "','" & txtmobile.Text & "','" & drpcity.SelectedItem.Text & "','" & txtpincode.Text & "','" & txtemail.Text & "','" & filepath & "')"
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                lblmsg.Text = "Record inserted"
                clear()
                Response.Redirect("home.aspx")
            Else
                lblmsg.Text = "select image"
            End If

        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub


End Class
