using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Windows;

namespace Vistas
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            NegocioSucursal ns = new NegocioSucursal();
            Sucursal obj = new Sucursal();
            int idsuc;
            if(int.TryParse(txtbIdSuc.Text, out idsuc))
            {
                obj.setIdSucursal(idsuc);
         
                if (ns.EliminarSucursalporId(obj)==1)
                lblSuc.Text = "Sucursal eliminada con exito";
                else { lblSuc.Text = "La sucursal no existe"; }
            }  
        }
    }
}