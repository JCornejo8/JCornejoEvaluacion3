using Eva3Model.DAL;
using Eva3Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JCornejoEvaluacion3Web
{
    public partial class Agregar_Medidores : System.Web.UI.Page
    {
        private IMedidorDAL medidoresDAL = new MedidorDALObjeto();
         protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void agregar_btn_Click(object sender, EventArgs e)
        {
            int numero = Int32.Parse(this.numero_txt.Text.Trim());
            int tipoConsumo = Int32.Parse(this.tipo_rb.Text.Trim());

            Medidor m = new Medidor()
            {
                Numero = numero,
                TipoConsumo = tipoConsumo,
            };
            medidoresDAL.AgregarMedidor(m);
            this.mensaje_lbl.Text = "Medidor Nro:"+m.Numero+"ingresado";
            Response.Redirect("Listar_Medidores.aspx");

        }
    }
}