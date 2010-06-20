using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class OrderItems
    {
        private int _orderId;

        public int OrderId
        {
            get { return _orderId; }
            set { _orderId = value; }
        }
        private int _itemNumber;

        public int ItemNumber
        {
            get { return _itemNumber; }
            set { _itemNumber = value; }
        }
        private int _quantityInStock;

        public int QuantityInStock
        {
            get { return _quantityInStock; }
            set { _quantityInStock = value; }
        }
    }
}
