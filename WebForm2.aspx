<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
          function gmail1() {
              var stEmail = document.getElementById("txtEmail").value;
              if (stEmail.indexOf("@") < 0) {
                  alert("there is not @");
                  return false;
              }
              if (stEmail.indexOf(".") < 0) {
                  alert("Email must contain a .")
                  return false;
              }
              else { return true; }
          }
          function pas2() {
            var stP = document.getElementById("pass").value;
              var stPt = document.getElementById("twopass").value;
              if (stP != stPt) {
                 alert("the passwords are not same");
                 return false;
             }
              else { return true;}
          }

          function lengt() {
              var lenphone = document.getElementById("txtphone").value;
              if (lenphone.length != 10) {
                  alert("this is not good phone");
                  return false;
              }

              return true;

          }

          function pa2() {
              var stPwd = document.getElementById("pass").value;
              var stp = stPwd.toLowerCase();
              var stPwd2 = document.getElementById("twopass").value;
              var stp2 = stPwd2.toLowerCase();
              if (stp == stp2) {
                  return true;
              }
              else {
                  alert("the password dont good");
                  return false;
              }
          }
          function next1() {
              return gmail1() && pas2() && lengt();
          }
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post"  Onsubmit="next1();" name="fit" id="fit" runat="server">
       <table>
            <tr>
                <td>הכנס שם משתמש</td>
                <td> <input type="text" id="fname" name="fname" /></td>
            </tr>
           <tr>
                <td>הכנס אימייל</td>
                <td> <input type="text" id="txtEmail" name="txtEmail" /></td>
            </tr>
            
           <tr>
                <td>הכנס סיסמא</td>
                <td> <input type="text" id="pass" name="pass" /></td>
            </tr>
           <tr>
                <td>אימות סיסמא</td>
                <td> <input type="text" id="twopass" name="twopass" /></td>
            </tr>
             <tr>
                <td>מספר טלפון</td>
                <td> <input type="text" id="txtphone" name="txtphone" /></td>
            </tr>
            <tr>
                <td>כמה אתה אוהב כושר</td>
                <td>
                    <select name="t" id="t">
                        <option>במידה קטנה</option>
                        <option>במידה רבה</option>
                        <option>מכור</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>מטרה שלך</td>
                <td><input type="checkbox" name="cd" id="cd1" value="stay1" />להתחזק
                    <input type="checkbox" name="cd" id="cd2" value="stay2" />לרדת במשקל
                    <input type="checkbox" name="cd" id="cd3" value="stay3" />לעלות במשקל
                    <input type="checkbox" name="cd" id="cd4" value="stay4" />כתחביב
                </td>
            </tr>

            <tr>
                <td>מגדר</td>
                <td><input type="radio" name="n" id="n1" value="m" />זכר
                    <input type="radio" name="n" id="n2" value="z" />נקבה

                </td>
            </tr>


            <tr>
                <td>ספר על עצמך</td>
                <td> <textarea rows="10" cols="60" name="test" id="test" ></textarea></td>
            </tr>
            <tr>
                <td>שלח</td>
                <td> <input type="submit" id="s" name="s" /></td>
                <td><input type="reset" id="r" name="r" /></td>
            </tr>


        </table>
        </form>
</asp:Content>
