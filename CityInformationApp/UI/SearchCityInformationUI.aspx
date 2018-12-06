<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCityInformationUI.aspx.cs" Inherits="CityInformationApp.UI.SearchCityInformationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:RadioButton ID="cityRadioButton" runat="server" GroupName="cityGroup" Text="Search by City" />
                        <br />
                        <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="cityGroup" Text="Search by Country" />
                    </td>
                    <td>
                        <asp:TextBox ID="inputTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Serial No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Item">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<% #Eval("CityName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Item">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<% #Eval("About")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Item">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<% #Eval("Country")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
