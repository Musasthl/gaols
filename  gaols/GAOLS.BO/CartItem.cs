using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class CartItem
    {
        private int _itemNumber;
        private string _description;
        private int _quantity;
        private double _price;
        private double _subTotal;

        public CartItem()
        {
        }

        public CartItem(int ProductID, string ProductName,
              string ImageUrl, int Quantity, double Price)
        {
            _itemNumber = ProductID;
            _description = ProductName;
            _quantity = Quantity;
            _price = Price;
            _subTotal = Quantity * Price;
        }

        public int ItemNumber
        {
            get
            {
                return _itemNumber;
            }
            set
            {
                _itemNumber = value;
            }
        }

        public string ProductName
        {
            get { return _description; }
            set { _description = value; }
        }

        public int Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }

        public double Price
        {
            get { return _price; }
            set { _price = value; }
        }

        public double SubTotal
        {
            get { return _quantity * _price; }

        }
    }
}
