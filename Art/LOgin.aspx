<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LOgin.aspx.cs" Inherits="LOgin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
                                                                                                             
 <script lang="javascript" type="text/javascript">
     function Clear() {
         document.getElementById("musername").style.visibility = "hidden";
         document.getElementById("mpassword").style.visibility = "hidden";
     }
     function CheckForm() {
         var flag = true;
         var n = document.getElementById("username").value;
         var p = document.getElementById("pass").value;
         if (n.length == 0) {
             document.getElementById("musername").value = "Please enter a user name";
             document.getElementById("musername").style.visibility = "visible";
             flag = false;
         }
         else
             document.getElementById("musername").style.visibility = "hidden";

         
         if (p.length == 0) {
             document.getElementById("mpassword").value = "Please enter a password";
             document.getElementById("mpassword").style.visibility = "visible";
             flag = false;
         }
         else
             document.getElementById("mpassword").style.visibility = "hidden";

         return flag;
     }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table  style="background-color:deepskyblue">
            <tr>
                <td><h3>User Name</h3></td>
                <td><input type="text" id="username" name="username" size="15"/></td>
                <td><input type="text" id="musername" name="musername" style="visibility:hidden;" disabled="disabled" /></td>
            </tr> 
            <tr>
                <td><h3>password</h3></td>
                <td><input type="password" id="pass" name="pass" size ="15" /></td>
                <td><input type="text" id="mpassword" name="mpassword" style="visibility:hidden;" disabled="disabled" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="sumbit" value="submit" /></td>
                <td><input type="reset" name="reseet" value="reset" /></td>
            </tr>
        </table>
    </center>
</asp:Content>

