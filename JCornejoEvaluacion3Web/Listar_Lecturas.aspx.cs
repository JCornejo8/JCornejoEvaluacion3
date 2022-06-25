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
    public partial class Listar_Lecturas : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALObjeto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaGrilla();
            }

        }
        protected void cargaGrilla()
        {
            List<Lectura> lecturas = lecturasDAL.ObtenerLecturas();
            this.lecturas_grd.DataSource = lecturas;
            this.lecturas_grd.DataBind();
        }

        protected void lecturas_grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "eliminar")
            {
                int numlectura=Convert.ToInt32(e.CommandArgument);
                lecturasDAL.EliminarLectura(numlectura);
                cargaGrilla();
            }
        }
    }
}