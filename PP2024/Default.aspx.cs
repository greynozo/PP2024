using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP2024
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //if (txtNombre.Text == "")
            //if (txtNombre.Text == String.Empty)
            if (!String.IsNullOrEmpty(txtNombre.Text) && !String.IsNullOrEmpty(txtApellido.Text))
            {
                lblTexto.Text = "Se ha generado el usuario para " + txtNombre.Text + " " + txtApellido.Text;
            }
            else
            {
                lblTexto.Text = "Todos los campos son obligatorios";
            }
        }
    }
}