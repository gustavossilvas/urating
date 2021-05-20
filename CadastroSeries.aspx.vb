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

Public Class CadastroSeries
    Inherits System.Web.UI.Page
    Dim conexao As New SqlConnection("Data Source=friendflixserver.database.windows.net;Initial Catalog=friendflixDB;Persist Security Info=True;User ID=friendflix;Password=M@ckenzie")
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Not String.IsNullOrEmpty(nomeserie.Text) Then
            Dim sqlselect As String = String.Empty
            sqlselect = "select * from series where nome_serie = '" + nomeserie.Text + "'"
            Dim dt As New DataTable
            Dim adapter As New SqlDataAdapter
            Dim command As SqlCommand = New SqlCommand(sqlselect, conexao)
            adapter = New SqlDataAdapter(sqlselect, conexao)
            Dim userData As New DataTable
            adapter.Fill(userData)

            Dim sqlselect2 As String = String.Empty
            sqlselect2 = "select * from filaseries where nome_serie = '" + nomeserie.Text + "'"
            Dim dt2 As New DataTable
            Dim adapter2 As New SqlDataAdapter
            Dim command2 As SqlCommand = New SqlCommand(sqlselect2, conexao)
            adapter2 = New SqlDataAdapter(sqlselect2, conexao)
            Dim userData2 As New DataTable
            adapter2.Fill(userData2)

            If userData.Rows.Count > 0 Then
                Response.Write("<script language=""javascript"">window.alert('Esta Série já esta cadastrada em nosso sistema!');</script>")
                nomeserie.Text = ""
                idioma.Text = ""
                diretornome.Text = ""
                plataformanome.Text = ""
                dtlancamento.Text = ""
                tempep.Text = ""
                temporada.Text = ""
                descricao.Text = ""
            Else
                If userData2.Rows.Count > 0 Then
                    Response.Write("<script language=""javascript"">window.alert('Esta Série já esta na fila de espera! Por favor aguarde a aprovação do Admin!');</script>")
                    nomeserie.Text = ""
                    idioma.Text = ""
                    diretornome.Text = ""
                    plataformanome.Text = ""
                    dtlancamento.Text = ""
                    tempep.Text = ""
                    temporada.Text = ""
                    descricao.Text = ""
                Else
                    Dim gender = ""
                    For Each i As Integer In genero.GetSelectedIndices
                        gender = gender & genero.Items(i).ToString & ","

                    Next
                    gender = gender.Remove(gender.Length - 1)
                    conexao.Open()
                    cmd = conexao.CreateCommand()
                    cmd.CommandType = CommandType.Text
                    cmd.CommandText = "INSERT INTO [dbo].[filaseries]
                        ([nome_serie]
                        ,[idioma]
                        ,[nome_diretor]
                        ,[nome_plataforma]
                       ,[data_lancamento]
                       ,[temporada]
                       ,[tempo]
                       ,[link_capa]
                       ,[genero]
                       ,[descricao])
                        VALUES('" + nomeserie.Text + "','" + idioma.SelectedItem.Value + "','" + diretornome.Text + "','" + plataformanome.Text + "','" + dtlancamento.Text + "','" + temporada.Text + "','" + tempep.Text + "','" + imagembase64.Value + "','" + gender.ToString + "','" + descricao.Text + "')"
                    cmd.ExecuteNonQuery()

                    Response.Write("<script language=""javascript"">window.alert('A Série foi inserida na fila de aprovações! Aguarde o Admin aprovar. Obrigado!');</script>")
                    nomeserie.Text = ""
                    idioma.Text = ""
                    diretornome.Text = ""
                    plataformanome.Text = ""
                    dtlancamento.Text = ""
                    tempep.Text = ""
                    temporada.Text = ""
                    descricao.Text = ""

                    conexao.Close()
                End If
            End If

        Else
            Response.Write("<script language=""javascript"">window.alert('Nome da Série em branco! Por favor preencha!');</script>")

        End If
    End Sub
End Class