Public Class Informacion_Local
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dv As DataView = DirectCast(DS_Local.Select(DataSourceSelectArguments.Empty), DataView)
        If dv IsNot Nothing AndAlso dv.Count <> 0 Then
            lbTituloLocal.Text = dv.Table.Rows(0)(1).ToString()
        End If

    End Sub

End Class