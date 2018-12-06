<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="CityInformationApp.UI.IndexUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CityEntryUI.aspx">Save City Information</asp:HyperLink>
        <br/>
        <br/>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="SearchCityInformationUI.aspx">Search City Information</asp:HyperLink>
    </div>
    </form>
</body>
</html>
