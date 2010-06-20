using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class CustomerOrders
    {
        private string _customerID;

        public string CustomerID
        {
            get { return _customerID; }
            set { _customerID = value; }
        }
        private string _contactName;

        public string ContactName
        {
            get { return _contactName; }
            set { _contactName = value; }
        }
        private string _invoiceNumber;

        public string InvoiceNumber
        {
            get { return _invoiceNumber; }
            set { _invoiceNumber = value; }
        }
        private string _enteredByUser;

        public string EnteredByUser
        {
            get { return _enteredByUser; }
            set { _enteredByUser = value; }
        }
    }
}
