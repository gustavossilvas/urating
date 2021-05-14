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



Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        conexao.Open()
        Dim sql As String = String.Empty

        sql = "select * from usuarios where usuario = '" + Session("usuario") + "'"

        Dim dt As New DataTable
        Dim adapter As New SqlDataAdapter
        Dim command As SqlCommand = New SqlCommand(sql, conexao)
        adapter = New SqlDataAdapter(sql, conexao)
        Dim userData As New DataTable
        adapter.Fill(userData)

        Dim nomee As Object = userData.Rows.Item(0).Item("nome")
        Dim usuarioo As Object = userData.Rows.Item(0).Item("usuario")
        Dim senhaa As Object = userData.Rows.Item(0).Item("senha")
        Dim dt_nascc As Object = userData.Rows.Item(0).Item("dt_nasc")
        Dim cidadee As Object = userData.Rows.Item(0).Item("cidade")
        Dim uff As Object = userData.Rows.Item(0).Item("uf")
        Dim n_amigos As Object = userData.Rows.Item(0).Item("n_amigos")
        Dim n_avaliacoes As Object = userData.Rows.Item(0).Item("n_avaliacoes")
        Dim fotoo As Object = userData.Rows.Item(0).Item("foto")
        Dim statuss As Object = userData.Rows.Item(0).Item("status")


        nome.Text = nomee
        username.Text = usuarioo
        username2.Text = usuarioo
        oldpass.Text = senhaa
        dtnasc.Text = dt_nascc
        cidade.Text = cidadee
        uf.Text = uff
        status.Text = statuss
        foto.ImageUrl = fotoo



        conexao.Close()






    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If newpass.Text = "" Then
            Response.Write("<script language=""javascript"">alert('Nova senha em branco!');</script>")
        Else
            conexao.Open()
            Dim update = New SqlCommand("update usuarios set senha = '" + newpass.Text + "' where usuario = '" + Session("usuario") + "'", conexao)
            update.ExecuteNonQuery()
            Response.Write("<script language=""javascript"">alert('Senha alterada!');</script>")
            conexao.Close()
            DataBind()
            newpass.Text = ""
        End If
    End Sub


End Class