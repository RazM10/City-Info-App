using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using CityInformationApp.DAL.Model;

namespace CityInformationApp.DAL.Gateway
{
    public class CityGateway
    {
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public CityGateway()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Input"].ConnectionString;
            Connection = new SqlConnection(connectionString);
            //Command = new SqlCommand();
        }
        public int Save(City aCity)
        {
            string query = "INSERT INTO CityInfo(City,About,Country) VALUES(@city,@about,@country)";
            Command = new SqlCommand(query, Connection);
            Command.Parameters.AddWithValue("@city", aCity.CityName);
            Command.Parameters.AddWithValue("@about", aCity.About);
            Command.Parameters.AddWithValue("@country", aCity.Country);

            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffect;
        }
        public bool IsExists(string city)
        {
            string query = "SELECT * FROM CityInfo WHERE City=@city";
            Command = new SqlCommand(query, Connection);
            Command.Parameters.AddWithValue("@city", city);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public bool IsEmpty(string city)
        {
            bool isEmpty = string.IsNullOrEmpty(city);
            return isEmpty;
        }

        public List<City> GetAllData()
        {
            string query = "SELECT * FROM CityInfo";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<City> cityList = new List<City>();

            while (Reader.Read())
            {
                City aCity = new City();
                aCity.Id = Convert.ToInt32(Reader["Id"]);
                aCity.CityName = Reader["City"].ToString();
                aCity.About = Reader["About"].ToString();
                aCity.Country = Reader["Country"].ToString();
                cityList.Add(aCity);
            }
            Reader.Close();
            Connection.Close();
            return cityList;
        }

        public List<City> GetByCityName(string name)
        {
            string s = "%"+name+"%";
            string query = "SELECT * FROM CityInfo WHERE City LIKE @city";
            Command = new SqlCommand(query, Connection);
            Command.Parameters.AddWithValue("@city", s);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<City> cityList = new List<City>();

            while (Reader.Read())
            {
                City aCity = new City();
                aCity.Id = Convert.ToInt32(Reader["Id"]);
                aCity.CityName = Reader["City"].ToString();
                aCity.About = Reader["About"].ToString();
                aCity.Country = Reader["Country"].ToString();
                cityList.Add(aCity);
            }
            Reader.Close();
            Connection.Close();
            return cityList;
        }

        public List<City> GetByCountryName(string name)
        {
            string s = "%" + name + "%";
            string query = "SELECT * FROM CityInfo WHERE Country LIKE @country";
            Command = new SqlCommand(query, Connection);
            Command.Parameters.AddWithValue("@country", s);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<City> countryList = new List<City>();

            while (Reader.Read())
            {
                City aCountry = new City();
                aCountry.Id = Convert.ToInt32(Reader["Id"]);
                aCountry.CityName = Reader["City"].ToString();
                aCountry.About = Reader["About"].ToString();
                aCountry.Country = Reader["Country"].ToString();
                countryList.Add(aCountry);
            }
            Reader.Close();
            Connection.Close();
            return countryList;
        }
    }
}