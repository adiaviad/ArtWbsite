<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <center>
    <Table style="height: 407px; width: 891px">
    <tr border ="10">
        <td ><img src="pictures/pic1.jpg" style="height: 79px; width: 185px" /></td>
        <td  ><img src="pictures/pic2.jpg" style="height: 79px; width: 185px" /></td>
        <td  ><img src="pictures/pic3.jpg" style="height: 79px; width: 185px" /></td>
    </tr>
    <tr>
      
        <td><img src="pictures/pic4.jpg" style="height: 79px; width: 185px" /></td>
        <td ><img src="pictures/pic5.jpg" style="height: 79px; width: 185px" /></td>
        <td ><img src="pictures/pic6.jpg" style="height: 79px; width: 185px" /></td>
    </tr>
    <tr>
        <td ><img src="pictures/pic7.jpg" style="height: 79px; width: 185px"/></td>
        <td ><img src="pictures/pic8.jpg" style="height: 79px; width: 185px" /></td>
        <td  ><img src="pictures/pic9.jpg" style="height: 79px; width: 185px" /></td>
    </tr>
  </Table>
      </center>
</asp:Content>

