﻿
Partial Class Student_Studentpage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            Label1.Text = Session("uname")
        Else
            Response.Redirect("login.aspx")

        End If
    End Sub
End Class

