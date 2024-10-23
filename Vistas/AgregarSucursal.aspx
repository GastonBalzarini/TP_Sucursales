<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Vistas.ListarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1772px;
        }
        .auto-style2 {
            width: 192px;
        }
        .auto-style3 {
            width: 76px;
        }
        .auto-style4 {
            width: 18px;
        }
        .auto-style5 {
            width: 478px;
        }
        .auto-style7 {
            width: 1776px;
        }
        .auto-style8 {
            width: 432px;
        }
        .auto-style9 {
            width: 318px;
        }
        .auto-style10 {
            width: 309px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
        <div>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ListarSucursal.aspx">Lista de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <h2>Grupo N° 14</h2>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-weight:bold;">Agregar Sucursal</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Nombre sucursal:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNombre" runat="server" Width="280px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe completar el nombre de sucursal" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Descripcion:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDesccripcion" runat="server" Width="280px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesccripcion" ErrorMessage="Debe completar la Descripcion" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Provincia:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Width="280px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Debe seleccionar una provincia" ForeColor="Red" InitialValue="--Seleccionar--">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">Direccion:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="280px" Height="61px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar una direccion" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblSucursal" runat="server"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
