<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regiser.aspx.cs" Inherits="Regiser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />    <script lang="javascript" type="text/javascript">
        function Clear() {
            document.getElementById("mpassword").style.visibility = "hidden";
            document.getElementById("musernamae").style.visibility = "hidden";
            document.getElementById("mLname").style.visibility = "hidden";
            document.getElementById("memail").style.visibility = "hidden";
            document.getElementById("mcheckpass").style.visibility = "hidden";
            document.getElementById("mFname").style.visibility = "hidden";
            document.getElementById("birth").style.visibility = "hidden";
            document.getElementById("mgender").style.visibility = "hidden";
            

        
        }
        function CheckForm()
        {
            
            var flag = true;
            var flagradio = false;
            var status;
            var u = document.getElementById("username").value;
            var p = document.getElementById("pass").value;
            var cp = document.getElementById("checkpass").value;
            var pn = document.getElementById("Fname").value;
            var fn = document.getElementById("Lname").value;
            var e = document.getElementById("email").value;
            var  y = document.getElementById("byear");
            var m = document.getElementById("bmonth");
            var d = document.getElementById("bday");
            var g = document.getElementsByName("gender");

            if (fn.length == 0) {
                document.getElementById("mLname").value = "enter a sir name please";
                document.getElementById("mLname").style.visibility = "visible";
                flag = false;
            }
            else {
                if (fn.length < 2) {
                    document.getElementById("mLname").value = "the sir name must be longer then 2 characters";
                    document.getElementById("mLname").style.visibility = "visible";
                    flag = false;

                }
                else {
                    status = false;
                    for (var i = 0; i < fn.length; i++) {
                        if (fn.charAt(i) == " ")
                            status = true;
                    }
                    if (status == true) {
                        document.getElementById("mLname").value = "please no space in the sir name";
                        document.getElementById("mLname").style.visibility = "visible";
                        flag = false;
                    }
                    else {
                        document.getElementById("mLname").style.visibility = "hidden";
                    }
                }
            }
           
            
            if (pn.length == 0)
            {
                document.getElementById("mFname").value = "enter a private name please";

                document.getElementById("mFname").style.visibility = "visible";
                flag = false;
            }
           else
           {
               if (pn.length < 2)
               {
                   document.getElementById("mFname").value = "the private must longer then one character";
                   document.getElementById("mFname").style.visibility = "visible";
                   flag = false;
               }
               else
               {
                   status = false;
                   for (var i = 0; i < pn.length; i++) {
                       if (pn.charAt(i) == " ")
                           status = true;
                   }
                   if (status == true)
                   {
                       document.getElementById("mFname").value = "please no space in the private name";
                       document.getElementById("mFname").style.visibility = "visible";
                       flag = false;
                   }
                   else
                   {
                       document.getElementById("mFname").style.visibility = "hidden";
                   }
               }
            }
            
            if (u.length == 0) {
                document.getElementById("musername").value = "enter a username please";
                document.getElementById("musername").style.visibility = "visible";
                flag = false;
            }
            else {
                if (u.length < 4 || u.length > 9) {
                    document.getElementById("musername").value = "the username must between 4 and 9 characters";
                    document.getElementById("musername").style.visibility = "visible";
                    flag = false;

                }
                else {
                    status = false;
                    for (var i = 0; i < u.length;i++) {
                        if (u.charAt(i) == " ") 
                            status = true;
                 
                        
                    }
                    if (status == true) {
                        document.getElementById("musername").value = "please no space in the username";
                        document.getElementById("musername").style.visibility = "visible";
                        flag = false;
                    }
                    else {
                        document.getElementById("musername").style.visibility = "hidden";
                    }
                }
            }
           
        
           
            if (p.length == 0) {
                document.getElementById("mpass").value = "enter password please";
                document.getElementById("mpass").style.visibility = "visible";
                flag = false;
            }
            else {
                if (p.length < 2 || p.length > 10) {
                    document.getElementById("mpass").value = "the password must be between 2 and 9 character";
                    document.getElementById("mpass").style.visibility = "visible";
                    flag = false;
                }
                else {
                    status = false;
                    for (var i = 0; i < p.length; i++) {
                        if (p.charAt(i) == " ")
                            status = true;

                    }
                    if (status == true) {
                        document.getElementById("mpass").value = "please no space in the password";
                        document.getElementById("mpass").style.visibility = "visible";
                        flag = false;
                    }
                    else {
                        document.getElementById("mpass").style.visibility = "hidden";
                    }
                }
            }
           
              
          
            if (cp.length == 0) {
                document.getElementById("mcheckpass").value = "enter password please";
                document.getElementById("mcheckpass").style.visibility = "visible";
                flag = false;
            }
            else {
                if (cp != p) {
                    document.getElementById("mcheckpass").value = "this must be exactly like the password";
                    document.getElementById("mcheckpass").style.visibility = "visible";
                    flag = false;
                }
                else {
                    document.getElementById("mcheckpass").style.visibility = "hidden";
                }
            }
                

               if (e.length == 0) {
                   document.getElementById("memail").value = "Enter an address";
                   document.getElementById("memail").style.visibility = "visible";
                   flag = false;
               }
               else {
                   status = false;
                   for (var i = 0; i < e.length; i++) {
                       if (e.charAt(i) == " ")
                           status = true;
                   }
                   if (status == true) {
                       document.getElementById("memail").value = "no spaces";
                       document.getElementById("memail").style.visibility = "visible";
                       flag = false;
                   }
                   else {
                       if (e.indexOf("@") < 0) {
                           document.getElementById("memail").value = "there must be a @";
                           document.getElementById("memail").style.visibility = "visible";
                           flag = false
                       }
                       else {
                           if ((e.indexOf("@" < 2) || (e.lastIndexOf('.') < (e.indexOf('@')) + 3))) {
                               document.getElementById("memail").value = "enter 2 letters before @ and atleast 3 letters between @ to @";
                               document.getElementById("memail").style.visibility = "visible";
                               flag = false;
                           }
                           else {
                               if (e.indexOf("@") != e.lastIndexOf("@")) {
                                   document.getElementById("memail").value = "no more than one @";
                                   document.getElementById("memail").style.visibility = "visible";
                                   flag = false;
                               }
                               else {
                                   if (e.indexOf(".") != e.lastIndexOf(".")) {
                                       document.getElementById("memail").style.visibility = "visible";
                                       flag = false;
                                   }
                                   else {
                                       if (e.length - 1 == e.lastIndexOf(".")) {
                                           document.getElementById("memail").value = "a dot cant be the last letter";
                                           document.getElementById("memail").style.visibility = "visible";
                                           flag = false;
                                       }
                                       else
                                           document.getElementById("memail").style.visibility = "hidden";
                                   }
                               }
                           }
                       }
                   }
               }
              
               
            
            if (y.selectedIndex == 0)
            {
                document.getElementById("birth").value = "choose a year please";
                document.getElementById("birth").style.visibility = "visible";
                flag = false;
            }
            else {
                if (m.selectedIndex == 0)
                {
                    document.getElementById("birth").value = "choose a month please";
                    document.getElementById("birth").style.visibility = "visible";
                    flag = false;
                }
                else
                {
                    if (d.selectedIndex == 0) {
                        document.getElementById("birth").value = "choose a day please";
                        document.getElementById("birth").style.visibility = "visible";
                        flag = false;
                    }
                    else
                        document.getElementById("birth").style.visibility = "hidden";
                }
            }
              
          
            for (var i = 0; i < g.length; i++)
            {
                if (g[i].checked == true)
                    flagradio = true;
            }
            if (flagradio == false) {
                document.getElementById("mgender").value = "choose a gender";
                document.getElementById("mgender").style.visibility = "visible";
                flag = false;
            }
            else {
                document.getElementById("mgender").style.visibility = "hidden";
            }
            return flag;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table style="height: 390px; width:1000px; background-color:lightpink">
        <tr>
            <td ></td>
            <td ><h2>register</h2></td>
            <td ></td>
        </tr>
        <tr>
            <td style="color:aquamarine" ><h2>private name</h2></td>
            <td ><input type="text" name="Fname" id="Fname" size="14" /></td>
            <td ><input type="text" name="mFname" id="mFname" style="visibility:hidden;" disabled="disabled" size="38"/></td>
        </tr>
        <tr>
            <td style="color:aquamarine" ><h2>sir name</h2></td>
            <td ><input type="text" name="Lname" id="Lname" size="14" /></td>
            <td ><input type="text" name="mLname" id="mLname" style="visibility:hidden;" disabled="disabled" size="38" /></td>
        </tr>
        <tr>
            <td style="color:aquamarine" ><h2>password</h2></td>
            <td ><input type="password" name="pass" id="pass" size="14" /></td>
            <td ><input type="text" name="mpass" id="mpass" style="visibility:hidden;" disabled="disabled" size="38"/></td>
        </tr>
        <tr>
            <td style="color:aquamarine" ><h2>confirm password</h2></td>
            <td ><input type="password" name="checkpass" id="checkpass" size="14" /></td>
            <td ><input type="text" name="mcheckpass" id="mcheckpass" style="visibility:hidden;" disabled="disabled" size="38"/></td>
        </tr>
        <tr>
            <td style="color:aquamarine" ><h2>email</h2></td>
            <td ><input type="text" name="email" id="email" size="14" /></td>
            <td ><input type="text" name="memail" id="memail" style="visibility:hidden;" disabled="disabled" size="50"/></td>
        </tr> 
        <tr>
            <td style="color:aquamarine" ><h2>username</h2></td>
            <td ><input type="text" name="username" id="username" size="14" /></td>
            <td ><input type="text" name="musername" id="musername" style="visibility:hidden;" disabled="disabled" size="38"/></td>
        </tr>
        <tr>
            <td style="color:aquamarine"><h2>date</h2></td>
        <td>
            <select id="byear" name="byear">
           
<option value ="0">year</option>
<option value ="1950">1950</option>
<option value ="1951">1951</option>
<option value ="1952">1952</option>
<option value ="1953">1953</option>
<option value ="1954">1954</option>
<option value ="1955">1955</option>
<option value ="1956">1956</option>
<option value ="1957">1957</option>
<option value ="1958">1958</option>
<option value ="1959">1959</option>
<option value ="1960">1960</option>
<option value ="1961">1961</option>
<option value ="1962">1962</option>
<option value ="1963">1963</option>
<option value ="1964">1964</option>
<option value ="1965">1965</option>
<option value ="1966">1966</option>
<option value ="1967">1967</option>
<option value ="1968">1968</option>
<option value ="1969">1969</option>
<option value ="1970">1970</option>
<option value ="1971">1971</option>
<option value ="1972">1972</option>
<option value ="1973">1973</option>
<option value ="1974">1974</option>
<option value ="1975">1975</option>
<option value ="1976">1976</option>
<option value ="1977">1977</option>
<option value ="1978">1978</option>
<option value ="1979">1979</option>
<option value ="1980">1980</option>
<option value ="1981">1981</option>
<option value ="1982">1982</option>
<option value ="1983">1983</option>
<option value ="1984">1984</option>
<option value ="1985">1985</option>
<option value ="1986">1986</option>
<option value ="1987">1987</option>
<option value ="1988">1988</option>
<option value ="1989">1989</option>
<option value ="1990">1990</option>
<option value ="1991">1991</option>
<option value ="1992">1992</option>
<option value ="1993">1993</option>
<option value ="1994">1994</option>
<option value ="1995">1995</option>
<option value ="1996">1996</option>
<option value ="1997">1997</option>
<option value ="1998">1998</option>
<option value ="1999">1999</option>
<option value ="2000">2000</option>
<option value ="2001">2001</option>
<option value ="2002">2002</option>
<option value ="2003">2003</option>
<option value ="2004">2004</option>
<option value ="2005">2005</option>
<option value ="2006">2006</option>
<option value ="2007">2007</option>
<option value ="2008">2008</option>
<option value ="2009">2009</option>
<option value ="2010">2010</option>
<option value ="2011">2011</option>
<option value ="2012">2012</option>
<option value ="2013">2013</option>
<option value ="2014">2014</option>
<option value ="2015">2015</option>
<option value ="2016">2016</option>
<option value ="2017">2017</option>
<option value ="2018">2018</option>
<option value ="2019">2019</option>
<option value ="2020">2020</option>
                </select>
           
           
        
            
        
            <select id="bday" name="bday">
                <option value ="0">day</option>
                <option value ="1">1</option>
<option value ="2">2</option>
<option value ="3">3</option>
<option value ="4">4</option>
<option value ="5">5</option>
<option value ="6">6</option>
<option value ="7">7</option>
<option value ="8">8</option>
<option value ="9">9</option>
<option value ="10">10</option>
<option value ="11">11</option>
<option value ="12">12</option>
<option value ="13">13</option>
<option value ="14">14</option>
<option value ="15">15</option>
<option value ="16">16</option>
<option value ="17">17</option>
<option value ="18">18</option>
<option value ="19">19</option>
<option value ="20">20</option>
<option value ="21">21</option>
<option value ="22">22</option>
<option value ="23">23</option>
<option value ="24">24</option>
<option value ="25">25</option>
<option value ="26">26</option>
<option value ="27">27</option>
<option value ="28">28</option>
<option value ="29">29</option>
<option value ="30">30</option>
<option value ="31">31</option>
            </select>
                        
        
            
        
            <select id="bmonth" name="bmonth">
<option value ="0">month</option>
<option value ="1">1</option>
<option value ="2">2</option>
<option value ="3">3</option>
<option value ="4">4</option>
<option value ="5">5</option>
<option value ="6">6</option>
<option value ="7">7</option>
<option value ="8">8</option>
<option value ="9">9</option>
<option value ="10">10</option>
<option value ="11">11</option>
<option value ="12">12</option>
            </select></td>
           <td ><input type="text" name="birth" id="birth" style="visibility:hidden; " disabled="disabled" /></td>
            </tr>
            <tr>
                <td>gender</td>
                <td><input type="radio" name="gender"/>male<input type="radio" name="gender"/>female</td>
           
        <td><input type="text" name="mgender" id="mgender" style="visibility:hidden;" disabled="disabled" size="15"/></td>
                 </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="sumbit" value="submit" /></td>
                <td><input type="reset" name="reseet" value="reset" /></td>
            </tr>

    </table>
</center>
</asp:Content>
