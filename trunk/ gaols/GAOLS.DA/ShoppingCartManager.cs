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
        public ManagerDS.ShoppingCartDataTable _cartTable;

        private DateTime _dateCreated;
        private DateTime _lastUpdate;

        public ShoppingCartManager()
        {
            _cartTable = new ManagerDS.ShoppingCartDataTable();
            _dateCreated = DateTime.Now;
        }

        public void Insert(int ProductID, decimal Price,
        decimal Quantity, string ProductName, string ImageUrl)
        {
            int ItemIndex = ItemIndexOfID(ProductID);
            if (ItemIndex == -1)
            {
                object o = new object();
                ManagerDS.ShoppingCartRow NewItem = o as ManagerDS.ShoppingCartRow;

                NewItem.ItemNumber = ProductID;
                NewItem.Quantity = Quantity;
                NewItem.Price = Price;
                NewItem.Description = ProductName;
                _cartTable.Rows.Add();
            }
            else
            {
                (_cartTable.Rows[ItemIndex] as ManagerDS.ShoppingCartRow).Quantity += 1;
            }
            _lastUpdate = DateTime.Now;
        }

        public void Update(int RowID, int ProductID,
                         int Quantity, decimal Price)
        {
            DataRow row = _cartTable.Rows[RowID];
            ManagerDS.ShoppingCartRow Item = row as ManagerDS.ShoppingCartRow;
            Item.ItemNumber = ProductID;
            Item.Quantity = Quantity;
            Item.Price = Price;
            _lastUpdate = DateTime.Now;
        }

        public void DeleteItem(int rowID)
        {
            _cartTable.Rows.RemoveAt(rowID);
            _lastUpdate = DateTime.Now;
        }

        private int ItemIndexOfID(int ProductID)
        {
            int index = 0;
            foreach (ManagerDS.ShoppingCartRow item in _cartTable.Rows)
            {
                if (item.ItemNumber == ProductID)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }

        public decimal Total
        {
            get
            {
                decimal t = 0;
                if (_cartTable.Rows == null)
                {
                    return 0;
                }
                foreach (ManagerDS.ShoppingCartRow Item in _cartTable.Rows)
                {
                    t += (Item.Quantity * Item.Price);
                }

                return t;
            }
        }

        public ManagerDS.ShoppingCartDataTable GetCart()
        {
            return _cartTable;
        }
    }
}
