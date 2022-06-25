using Eva3Model.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eva3Model.DAL
{
    public class LecturaDALObjeto : ILecturaDAL
    {
        private static List<Lectura> lecturas = new List<Lectura>();
        public void AgregarLectura(Lectura lectura)
        {
           lecturas.Add(lectura);
        }

        public void EliminarLectura(int numeroLectura)
        {
            Lectura eliminado = lecturas.Find(x => x.NumeroLectura == numeroLectura);
            lecturas.Remove(eliminado);
        }

        public List<Lectura> ObtenerLecturas()
        {
            return lecturas;
        }
    }
}
