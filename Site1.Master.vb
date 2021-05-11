Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Configuration
Imports System.Data
Imports System.IO
Imports System.Linq


Public Class Site1
    Inherits System.Web.UI.MasterPage
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim sql As String = String.Empty
        sql = "select * from rel_amizade where usuario_recebimento = '" + Session("usuario").ToString() + "' and [status] = 0"

        Dim dt As New DataTable
        Dim adapter As New SqlDataAdapter
        Dim command As SqlCommand = New SqlCommand(sql, conexao)
        adapter = New SqlDataAdapter(sql, conexao)
        Dim userData As New DataTable
        adapter.Fill(userData)

        Dim qtdamigos = userData.Rows.Count()

        solicitacoes.Text = qtdamigos

        If Request.Cookies("admin") Is Nothing Then
            usercontrol.Visible = False
            gerenciaravaliacoes.Visible = False

        Else
            usercontrol.Visible = True
            gerenciaravaliacoes.Visible = True
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

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnbuscar.Click
        Session("busca") = buscar.Value
        Response.Redirect("busca.aspx")
    End Sub
End Class