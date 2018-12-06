using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CityInformationApp.DAL.Gateway;
using CityInformationApp.DAL.Model;

namespace CityInformationApp.BLL
{
    public class CityManager
    {
        CityGateway aCityGateway=new CityGateway();
        public string Save(City aCity)
        {
            if (aCityGateway.IsExists(aCity.CityName) || (aCityGateway.IsEmpty(aCity.CityName)))
            {
                return "This Category Type is Already Exists Or Type cant be empty";
            }
            else
            {
                int rowAffect = aCityGateway.Save(aCity);
                if (rowAffect > 0)
                {

                    return "Save Successful";
                }
                else
                {
                    return "Save Failed";

                }
            }
        }

        public List<City> GetAllData()
        {
            return aCityGateway.GetAllData();
        }

        public List<City> GetByCityName(string name)
        {
            return aCityGateway.GetByCityName(name);
        }

        public List<City> GetByCountryName(string name)
        {
            return aCityGateway.GetByCountryName(name);
        }
    }
}