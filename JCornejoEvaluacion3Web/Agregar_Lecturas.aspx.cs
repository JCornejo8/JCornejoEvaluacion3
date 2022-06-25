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
    public partial class Agregar_Lecturas : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALObjeto();
        private IMedidorDAL medidoresDAL = new MedidorDALObjeto();


        protected void Page_Load(object sender, EventArgs e)
        {
            List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
            this.medidor_Dd1.DataSource = medidores;
            this.medidor_Dd1.DataValueField = "Numero";
            this.medidor_Dd1.DataTextField = "Numero";
            this.medidor_Dd1.DataBind();

        }

        protected void agregar_btn2_Click(object sender, EventArgs e)
        {
            //recuperar los datos del front end y almacenarlos en variables locales
            int numerolectura = Convert.ToInt32(this.numeroLeectura_txt.Text.Trim());
            DateTime fecha = this.fecha_cld.SelectedDate;
            double consumo = Convert.ToDouble(this.consumo_txt.Text.Trim());
            int medidorValor = Convert.ToInt32(this.medidor_Dd1.SelectedValue.Trim());
            int hora = Convert.ToInt32(this.hora_txt.Text.Trim());
            int minuto = Convert.ToInt32(this.minuto_txt.Text.Trim());

            List<Medidor> medidoress = medidoresDAL.ObtenerMedidores();
            Medidor medi = medidoress.Find(m => m.Numero == medidorValor);
            //medi solo busca el primer item igresado (??)
            Lectura l = new Lectura()
            {
                NumeroLectura = numerolectura,
                FechaLectura = fecha,
                MedidorL = medi,
                Consumo = consumo,
                HoraLectura = hora,
                MinutoLectura = minuto
            };

            lecturasDAL.AgregarLectura(l);
            this.mensaje_lbl.Text = "Lectura ingresada";
            Response.Redirect("Listar_Lecturas.aspx");

        }
    }
}