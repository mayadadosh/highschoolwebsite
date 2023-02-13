<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication4.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    אתר מנהל

      <table style="width: 90%; border: 2px solid black; text-align:center; margin-left: auto; margin-right: auto;">
        <tr>
            <th>שם משתמש</th>
            <th>אימייל</th>
            <th>סיסמא</th>
            <th>מספר טלפון</th>
            <th>עדכון</th>
            <th>מחיקה</th>
        </tr>
        
   <% getInformation(); %>

    </table>
</asp:Content>
