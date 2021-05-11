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


Public Class WebForm6
    Inherits System.Web.UI.Page

    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand

        If (e.CommandName = "aceitar") Then
            conexao.Open()
            Dim update = New SqlCommand("update rel_amizade set [status] = 1 where usuario_recebimento = '" + Session("usuario").ToString() + "' and usuario_envio = '" + e.CommandArgument.ToString() + "'", conexao)
            update.ExecuteNonQuery()
            conexao.Close()
            DataList1.DataBind()
            Response.Write("<script language=""javascript"">alert('Amigo adicionado!');</script>")


        ElseIf (e.CommandName = "negar") Then
            conexao.Open()
            Dim delete = New SqlCommand("delete from rel_amizade where usuario_recebimento = '" + Session("usuario").ToString() + "' and usuario_envio = '" + e.CommandArgument.ToString() + "'", conexao)
            delete.ExecuteNonQuery()
            conexao.Close()
            DataList1.DataBind()
            Response.Write("<script language=""javascript"">alert('Solicitação recusada com sucesso!');</script>")

        End If



    End Sub



    Protected Sub negar_Click(sender As Object, e As EventArgs)

    End Sub


End Class