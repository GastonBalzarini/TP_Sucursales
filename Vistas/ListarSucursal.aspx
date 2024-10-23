<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="Vistas.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1545px;
        }
        .auto-style4 {
            width: 607px;
        }
        .auto-style7 {
            width: 490px;
        }
        .auto-style9 {
            width: 1550px;
        }
        .auto-style10 {
            width: 239px;
        }
        .auto-style11 {
            width: 226px;
        }
        .auto-style12 {
            width: 270px;
        }
        .auto-style13 {
            width: 1546px;
        }
        .auto-style14 {
            width: 175px;
        }
        .auto-style15 {
            width: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div class="auto-style9">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ListarSucursal.aspx">Lista de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <h2>Listado de sucursales</h2>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15">
                        <p>Busqueda ingrese Id sucursal</p>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtId" runat="server" Width="253px" TextMode="Number"></asp:TextBox>
                    &nbsp;
                        <asp:Label ID="lblAviso" runat="server" ForeColor="Maroon"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnMostrarTodo" runat="server" Text="Mostrar todos" Width="155px" OnClick="btnMostrarTodo_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="gvSucursal" runat="server">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
          
        </div>
    </form>
</body>
</html>
