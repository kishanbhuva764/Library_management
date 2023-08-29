
Partial Class studlogout
    Inherits System.Web.UI.Page

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub
End Class
