using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAOLS.BO
{
    public class Users
    {
        private string _userId;

        public string UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _lastName;

        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        private string _firstName;

        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
    }
}
