Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Request.Cookies("admin") Is Nothing Then
            usercontrol.Visible = False
            gerenciaravaliacoes.visible = False
        Else
            usercontrol.Visible = True
            gerenciaravaliacoes.visible = True
        End If

    End Sub

    Protected Sub Sair_Click(sender As Object, e As EventArgs) Handles Sair.Click
        Dim cookieuser As New HttpCookie("user")
        cookieuser = Request.Cookies("user")
        Dim cookieadm As New HttpCookie("admin")
        cookieadm = Request.Cookies("admin")
        If Request.Cookies("admin") Is Nothing Then
            cookieuser.Expires = DateTime.Now.AddMilliseconds(-10)
            Response.Cookies.Add(cookieuser)
        Else
            cookieadm.Expires = DateTime.Now.AddMilliseconds(-10)
            Response.Cookies.Add(cookieadm)
        End If







        FormsAuthentication.SignOut()

        Session.Clear()
        Session.Abandon()
        Response.Redirect("Login.aspx")
    End Sub
End Class