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

Public Class Pagfilme
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Dim cmd2 As New SqlCommand
    Dim cmd3 As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "select * from filmes where nome_filme = '" + Session("filme") + "'"
        cmd.ExecuteNonQuery()
        Dim da As New SqlDataAdapter(cmd)
        Dim table As New DataTable()
        da.Fill(table)




        imagem.ImageUrl = table.Rows(0)(8).ToString()
        nomefilme.Text = table.Rows(0)(1).ToString()
        conexao.Close()
    End Sub
    Protected Sub DlistUser_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DlistUser.ItemCommand





        If (e.CommandName = "like") Then
            conexao.Open()
            cmd2 = conexao.CreateCommand()
            cmd2.CommandType = CommandType.Text
            cmd2.CommandText = "select likes from avaliacao_filmes where nome_filme = '" + Session("filme") + "' and usuario = '" + e.CommandArgument.ToString() + "'"
            cmd2.ExecuteNonQuery()
            Dim da2 As New SqlDataAdapter(cmd2)
            Dim table2 As New DataTable()
            da2.Fill(table2)
            Dim nlikes = table2.Rows(0)(0).ToString
            nlikes += 1


            cmd3 = conexao.CreateCommand()
            cmd3.CommandType = CommandType.Text
            cmd3.CommandText = "update avaliacao_filmes set likes = " + nlikes + " where nome_filme = '" + Session("filme") + "' and usuario = '" + e.CommandArgument.ToString() + "'"
            cmd3.ExecuteNonQuery()
            conexao.Close()
            DataBind()
        ElseIf (e.CommandName = "comentar") Then
            Response.Redirect("comentariosfilme.aspx")



        End If
    End Sub
End Class