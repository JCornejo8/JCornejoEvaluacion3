using Eva3Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eva3Model.DAL
{
    public interface IMedidorDAL
    {
        void AgregarMedidor(Medidor medidor);
        List<Medidor>ObtenerMedidores();
        void EliminarMedidor(int numero);
        List<Medidor> FiltrarMedidores(int tipoConsumo);


    }
}
