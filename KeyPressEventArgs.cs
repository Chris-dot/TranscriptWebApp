using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reconocimiento
{
    public class KeyPressEventArgs
    {
        public char KeyChar { get; set; }

        public bool Handle { get; set; }


        public bool Handled { get; set; }

        public bool Cancel { get; set; }
    }
}
