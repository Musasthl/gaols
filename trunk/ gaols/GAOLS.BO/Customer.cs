using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class Customer
    {
        private string _customerID;

        public string CustomerID
        {
            get { return _customerID; }
            set { _customerID = value; }
        }

        public string CustomerName
        {
            get { return string.Format("{0}, {1}, {2}",
                _lastName, _firstname, _middleName); }
        }
        private string _lastName;

        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        private string _firstname;

        public string Firstname
        {
            get { return _firstname; }
            set { _firstname = value; }
        }
        private string _middleName;

        public string MiddleName
        {
            get { return _middleName; }
            set { _middleName = value; }
        }
    }
}
