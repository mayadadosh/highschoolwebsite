using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }
       
        public void getInformation()
        {
            //פקודה לקבלת כל הנתונים מטבלת הלקוחות שבמסד וסידורם ע"פ עמודת השם א-ת
            //לקבלת נתונים מסויימים, החליפו את הכוכבית בשמות העמודות והפרידו בינהם ע"י פסיק
            //מומלץ לרשום שמות של טבלאות ועמודות בתוך סוגריים מרובעות אך לא חובה כל עוד השם הוא ללא רווח
            //ASC = סידור א-ת
            //DESC = סידור הפוך ת-א
            string sql = "SELECT * FROM [table2] ORDER BY [ID] ASC";
            DataSet data = Database.GetDataOffline(sql);
            if (data.Tables[0].Rows.Count != 0)
            {
                foreach (DataRow row in data.Tables[0].Rows)
                {
                    string html = "<tr>";
                    html += "<td>" + row["ID"] + "</td>";
                    html += "<td>" + row["fname"] + "</td>";
                    html += "<td>" + row["txtEmail"] + "</td>";
                    html += "<td>" + row["pass"] + "</td>";
                    html += "<td>" + row["txtphone"] + "</td>";
                    html += "<td><a href='Edit.aspx?ID=" + row["ID"] + "'>ערוך</td>";
                    html += "<td><a href='Delete.aspx?ID=" + row["ID"] + "'>מחק</td>";
                    Response.Write(html);
                }
            }
            else
            {
                Response.Write("<tr><td colspan='7'>אין רשומות</td></tr>");
            }
        }
    }
}