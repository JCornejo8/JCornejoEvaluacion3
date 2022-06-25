using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Eva3Model.DTO
{
    public class Medidor
    {
        private int numero;
        private int tipoConsumo;


        public string TipoConsumoCBX
        {
            get
            {
                string tipcom = "";
                switch (TipoConsumo)
                {
                    case 1:
                        tipcom = "A";
                        break;
                    case 2:
                        tipcom = "B";
                        break;
                }
                return tipcom;
            }
        }

        public int Numero { get => numero; set => numero = value; }
        public int TipoConsumo { get => tipoConsumo; set => tipoConsumo = value; }
    }
}
