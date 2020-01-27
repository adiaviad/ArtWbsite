<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />    <script lang="javascript" type="text/javascript">
        var p = 0;
        function SevenBoom() {
           
            p++;
           
            if (p % 7 == 0) {
                p=0
            } 
            document.getElementById("seven").value = p;
        }
        function Boom() {

            p++;
            document.getElementById("seven").value = p;
            if (p % 7 == 0) {
                document.getElementById("seven").value = "boom";
            }
            else {
                p = 0;
                document.getElementById("seven").value = p;
            }

        }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee height:200px direction="right">
     <img src="gif/Pkaat3.gif" style="height:300px; width:300px " />
    </marquee>
    <marquee height:200px direction="right">
     < <img src="gif/giphy.gif" style="height:300px; width:300px " />
    </marquee>
    <marquee>
    <table>
        <tr><td></td><td><h3>שבע בום</h3></td><td></td></tr>
      <tr><td> <input type="button" name="Bseven" id="Bseven" value="+1" onclick="return SevenBoom()" /></td>
        <td><input type="text" id="seven" name="seven"  /></td>
           <td> <input type="button" name="Bboom" id="Bboom" value="boom" onclick="return Boom()" /></td>
      </tr> 
   </table>
    </marquee>
</asp:Content>

