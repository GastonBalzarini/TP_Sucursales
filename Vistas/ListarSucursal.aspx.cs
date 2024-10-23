using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades;


namespace Vistas
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        NegocioSucursal neg = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                mostrarTabla();
            }
        }

        protected void mostrarTabla()
        {
            DataTable tablaSucursales = neg.getTabla();
            gvSucursal.DataSource = tablaSucursales;
            gvSucursal.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            lblAviso.Text = "";
            if(txtId.Text == "")
            {
                lblAviso.Text = "Debe ingresar un ID";
                return;
            }
            string ID = txtId.Text;

            gvSucursal.DataSource = neg.BuscarSuc(ID);
            gvSucursal.DataBind();
            int filas = gvSucursal.Rows.Count;
            if (filas == 0)
            {
                lblAviso.Text = "No existe una cucursal con ese id";
            }

            txtId.Text = "";
        }

        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
            mostrarTabla();
        }
    }
}