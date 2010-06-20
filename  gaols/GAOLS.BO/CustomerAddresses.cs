using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class CustomerAddresses
    {
        private string _customerId;

        public string CustomerId
        {
            get { return _customerId; }
            set { _customerId = value; }
        }
        private string _addressType;

        public string AddressType
        {
            get { return _addressType; }
            set { _addressType = value; }
        }
        private string _street;

        public string Street
        {
            get { return _street; }
            set { _street = value; }
        }
        private string _city;

        public string City
        {
            get { return _city; }
            set { _city = value; }
        }
        private string _state;

        public string State
        {
            get { return _state; }
            set { _state = value; }
        }
        private string _zip;

        public string Zip
        {
            get { return _zip; }
            set { _zip = value; }
        }
    }
}
