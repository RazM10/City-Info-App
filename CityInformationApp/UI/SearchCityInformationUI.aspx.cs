using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CityInformationApp.BLL;

namespace CityInformationApp.UI
{
    public partial class SearchCityInformationUI : System.Web.UI.Page
    {
        CityManager aCityManager=new CityManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cityGridView.DataSource = aCityManager.GetAllData();
                cityGridView.DataBind();
            }
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (inputTextBox.Text != "")
            {
                if (cityRadioButton.Checked)
                {
                    string name = inputTextBox.Text;
                    cityGridView.DataSource = aCityManager.GetByCityName(name);
                    cityGridView.DataBind();
                }
                else
                {
                    string name = inputTextBox.Text;
                    cityGridView.DataSource = aCityManager.GetByCountryName(name);
                    cityGridView.DataBind();
                }
            }
            else
            {
                Response.Write("Field can not empty!");
            }
            
        }
    }
}