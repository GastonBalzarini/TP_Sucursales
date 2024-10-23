using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Negocio;
using Entidades;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas
{
    public partial class ListarSucursales : System.Web.UI.Page
    {
        NegocioSucursal ns = new NegocioSucursal();
        private Sucursal obj = new Sucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                CargarDDL();
                ddlProvincia.Items.Insert(0, "--Seleccionar--");
            }
        }

        void CargarDDL()
        {
            ddlProvincia.DataSource = ns.ObtenerTablaProvincia();
            ddlProvincia.DataTextField = "DescripcionProvincia";
            ddlProvincia.DataValueField = "id_Provincia";
            ddlProvincia.DataBind();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            int indiceSeleccionado = ddlProvincia.SelectedIndex;
            estado = ns.AgregarSucursal(txtNombre.Text, txtDesccripcion.Text, indiceSeleccionado, txtDireccion.Text);
            txtNombre.Text = "";
            txtDesccripcion.Text = "";
            txtDireccion.Text = "";

            if (estado == true)
            {
                lblSucursal.Text = "Sucursal Ingresada con Exito!";
            }
            else
            {
                lblSucursal.Text = "Error, No se pudo ingresar la Sucursal";
            }
        }
    }    
}