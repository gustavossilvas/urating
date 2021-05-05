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
Public Class Perfil
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        conexao.Open()
        cmd = conexao.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "select * from usuarios where usuario = '" + Session("verperfil").ToString() + "'"
        cmd.ExecuteNonQuery()
        Dim da As New SqlDataAdapter(cmd)
        Dim table As New DataTable()
        da.Fill(table)

        imagem.ImageUrl = table.Rows(0)(12).ToString()
        username.Text = table.Rows(0)(1).ToString()



    End Sub

End Class