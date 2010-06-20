using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GAOLS.BO;
using System.Data;

namespace GAOLS.DA
{
    public class ShoppingCartManager
    {
        public static ManagerDS.ShoppingCartDataTable cartTable;

        public static ManagerDS.ShoppingCartDataTable GetCart()
        {
            return cartTable;
        }
    }
}
