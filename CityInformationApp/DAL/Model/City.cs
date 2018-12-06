using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CityInformationApp.DAL.Model
{
    public class City
    {
        public int Id { get; set; }
        public string CityName { get; set; }
        public string About { get; set; }
        public string Country { get; set; }
    }
}