<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form method="post" name="fit" id="fit" runat="server">

             <table>
            <tr>
                <td>שם משתמש</td>
                <td> <input type="text" id="fname" name="fname"  tabindex="1"/></td>
            </tr>
            <tr>
                <td>הכנס סיסמא</td>
                <td> <input type="password" id="pass" name="pass" tabindex="2" /></td>
            </tr>
         <tr>
                <td>כניסה</td>
                <td> <input type="submit" id="s" name="s" /></td>
            </tr>
        <tr>

        </tr>
        <tr>
            <td bgcolor="cc3366#"> <a href="WebForm2.aspx"><font color="white">    &nbsp חבר מועדון חדש? לחץ להצטרפות   &nbsp    </font></a></td>
        </tr>
        </table>

         </form>
</asp:Content>
