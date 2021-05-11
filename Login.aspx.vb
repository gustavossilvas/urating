Imports System.Data.SqlClient
Imports System.Web.Security




Public Class _Login
    Inherits Page


    Private da As SqlDataAdapter


    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")

    Private location As Object



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Public Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click


        If Not String.IsNullOrEmpty(username.Text) And Not String.IsNullOrEmpty(senha.Text) Then

            Dim sql As String = String.Empty
            sql = "select * from usuarios where usuario = '" + username.Text + "' and senha = '" + senha.Text + "'"

            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sql, conexao)
            adapter = New SqlDataAdapter(sql, conexao)
            Dim userData As New DataTable

            adapter.Fill(userData)
            If userData.Rows.Count > 0 Then
                Dim isAdmin As Object = userData.Rows.Item(0).Item("isAdmin")
                If isAdmin = True Then
                    Dim admin As New FormsAuthenticationTicket("admin", False, 30)
                    Dim hash As String = FormsAuthentication.Encrypt(admin)
                    Dim cookie As New HttpCookie("admin", hash)

                    Response.Cookies.Add(cookie)
                ElseIf isAdmin = False Then

                    Dim user As New FormsAuthenticationTicket("user", False, 30)
                    Dim hash As String = FormsAuthentication.Encrypt(user)
                    Dim cookie As New HttpCookie("user", hash)
                    Response.Cookies.Add(cookie)

                End If
                Session.Item("usuario") = username.Text

                FormsAuthentication.RedirectFromLoginPage(username.Text, False)






            Else
                Response.Write("<script language=""javascript"">alert('Nome e/ou usuário incorreto(s). Tente novamente.');</script>")
            End If

        Else
            Response.Write("<script language=""javascript"">alert('Por favor, insira usuário e senha!');</script>")

        End If

    End Sub


End Class