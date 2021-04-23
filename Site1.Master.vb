Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session.Item("role").Equals("Admin") Then
            usercontrol.Visible = True


        Else
            usercontrol.Visible = False
        End If


    End Sub

    Protected Sub Sair_Click(sender As Object, e As EventArgs) Handles Sair.Click
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class