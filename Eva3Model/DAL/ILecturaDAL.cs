using Eva3Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eva3Model.DAL
{
    public interface ILecturaDAL
    {
        void AgregarLectura(Lectura lectura);
        List<Lectura> ObtenerLecturas();
        void EliminarLectura(int numeroLectura);
    }
}
