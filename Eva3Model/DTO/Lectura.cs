using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eva3Model.DTO
{
    public class Lectura
    {
        private int numeroLectura;
        private DateTime fechaLectura;
        private int horaLectura;
        private int minutoLectura;
        private double consumo;
        private Medidor medidorL;

        public int NumeroLectura { get => numeroLectura; set => numeroLectura = value; }
        public DateTime FechaLectura { get => fechaLectura; set => fechaLectura = value; }
        public int HoraLectura { get => horaLectura; set => horaLectura = value; }
        public int MinutoLectura { get => minutoLectura; set => minutoLectura = value; }
        public double Consumo { get => consumo; set => consumo = value; }
        public Medidor MedidorL { get => medidorL; set => medidorL = value; }
    }
}
