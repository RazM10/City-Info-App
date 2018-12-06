using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CityInformationApp.BLL;
using CityInformationApp.DAL.Model;

namespace CityInformationApp.UI
{
    public partial class CityEntryUI : System.Web.UI.Page
    {
        CityManager aCityManager = new CityManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            City aCity=new City();
            aCity.CityName = cityNameTextBox.Text;
            int length=aCity.CityName.Length;
            if (length >= 4)
            {
                aCity.About = aboutTextBox.Text;
                aCity.Country = countryTextBox.Text;
                string msg = aCityManager.Save(aCity);
                Response.Write(msg);

                cityNameTextBox.Text = String.Empty;
                aboutTextBox.Text = String.Empty;
                countryTextBox.Text = String.Empty;
            }
            else
            {
                Response.Write("City name can not be less than 4");
            }

            
        }
    }
}