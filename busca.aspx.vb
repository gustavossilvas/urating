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

Public Class busca
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load





    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub DlistUser_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DlistUser.ItemCommand

        If (e.CommandName = "perfil") Then
            Session("verperfil") = e.CommandArgument.ToString()
            Response.Redirect("Perfil.aspx")
        ElseIf (e.CommandName = "add") Then
            conexao.Open()
            'FAZENDO O SELECT PARA VERIFICAR SE JA MANDOU O PEDIDO DE AMIZADE'

            Dim sql As String = String.Empty
            sql = "select * from rel_amizade where usuario_envio = '" + Session("usuario").ToString() + "' and usuario_recebimento = '" + e.CommandArgument.ToString() + "'"

            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sql, conexao)
            adapter = New SqlDataAdapter(sql, conexao)
            Dim userData As New DataTable
            adapter.Fill(userData)

            If userData.Rows.Count > 0 Then
                Response.Write("<script language=""javascript"">alert('Você já enviou uma solicitação de amizade para este amigo! Aguarde uma resposta!');</script>")

            Else
                Dim insert = New SqlCommand("insert into rel_amizade(usuario_envio,usuario_recebimento) values('" + Session("usuario").ToString() + "','" + e.CommandArgument.ToString() + "')", conexao)
                insert.ExecuteNonQuery()
                Response.Write("<script language=""javascript"">alert('Solicitação enviada');</script>")
            End If
            'INSERINDO PEDIDO DE AMIZADE'


            conexao.Close()

        ElseIf (e.CommandName = "delete") Then
            Dim delete = New SqlCommand("delete from rel_amizade where usuario_envio = '" + Session("usuario").ToString() + "' and usuario_recebimento = '" + e.CommandArgument.ToString() + "'")
            delete.ExecuteNonQuery()

        End If



    End Sub


End Class