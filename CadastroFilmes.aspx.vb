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


Public Class CadastroFilmes
    Inherits System.Web.UI.Page


    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        If Not String.IsNullOrEmpty(nomefilme.Text) Then
            Dim sqlselect As String = String.Empty
            sqlselect = "select * from filmes where nome_filme = '" + nomefilme.Text + "'"
            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sqlselect, conexao)
            adapter = New SqlDataAdapter(sqlselect, conexao)
            Dim userData As New DataTable
            adapter.Fill(userData)

            Dim sqlselect2 As String = String.Empty
            sqlselect2 = "select * from filafilmes where nome_filme = '" + nomefilme.Text + "'"
            Dim dt2 As New DataTable
            Dim adapter2 As New SqlDataAdapter
            Dim command2 As SqlCommand = New SqlCommand(sqlselect2, conexao)
            adapter2 = New SqlDataAdapter(sqlselect2, conexao)
            Dim userData2 As New DataTable
            adapter2.Fill(userData2)


            If userData.Rows.Count > 0 Then
                Response.Write("<script language=""javascript"">window.alert('Este filme já esta cadastrado em nosso sistema!');</script>")
                nomefilme.Text = ""
                idioma.Text = ""
                nomediretor.Text = ""
                nomeprodutora.Text = ""
                dtlancamento.Text = ""
                parte.Text = ""
                tempofilme.Text = ""
                descricao.Text = ""
            Else
                If userData2.Rows.Count > 0 Then
                    Response.Write("<script language=""javascript"">window.alert('Este filme já está em nossa fila de aprovações! Por favor espere o Admin aprovar!');</script>")
                Else

                    Dim gender = ""
                    For Each i As Integer In genero.GetSelectedIndices
                        gender = gender & genero.Items(i).ToString & ","

                    Next
                    gender = gender.Remove(gender.Length - 1)
                    conexao.Open()
                    cmd = conexao.CreateCommand()
                    cmd.CommandType = CommandType.Text
                    cmd.CommandText = "INSERT INTO [dbo].[filafilmes]
           ([nome_filme]
           ,[idioma]
           ,[nome_diretor]
           ,[nome_produtora]
           ,[data_lancamento]
           ,[parte]
           ,[tempo]
           ,[link_capa]
           ,[genero]
           ,[descricao])
            values('" + nomefilme.Text + "','" + idioma.SelectedItem.Value + "','" + nomediretor.Text + "','" + nomeprodutora.Text + "','" + dtlancamento.Text + "','" + parte.Text + "','" + tempofilme.Text + "','" + imagembase64.Value + "','" + gender.ToString + "','" + descricao.Text + "')"
                    cmd.ExecuteNonQuery()

                    Response.Write("<script language=""javascript"">window.alert('O Filme foi inserido na fila de aprovações! Aguarde o Admin aprovar. Obrigado!');</script>")
                    nomefilme.Text = ""
                    idioma.Text = ""
                    nomediretor.Text = ""
                    nomeprodutora.Text = ""
                    dtlancamento.Text = ""
                    parte.Text = ""
                    tempofilme.Text = ""
                    descricao.Text = ""

                    conexao.Close()
                End If

            End If
        Else
            Response.Write("<script language=""javascript"">window.alert('Nome do Filme em branco!');</script>")

        End If


    End Sub
End Class