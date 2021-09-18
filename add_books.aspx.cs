using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLib.Librarian
{
    public partial class add_books1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Harsh Trainning Projects\eLib\App_Data\lms.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string books_image_name = Class1.GetRandomPassword(10) +".jpg" ;
            string books_pdf = "";
            string books_video = "";


            string path = "";
            string path2 = "";
            string path3 = "";

            f1.SaveAs(Request.PhysicalApplicationPath + "Librarian/books_image/" + books_image_name.ToString());
            path = "books_image/" + books_image_name.ToString();


            if(f2.FileName.ToString()!=null)
            {
                books_pdf = Class1.GetRandomPassword(10) + ".pdf";
            //string path2 = "";
            f2.SaveAs(Request.PhysicalApplicationPath + "Librarian/books_pdf/" + books_pdf.ToString());
            path2 = "books_pdf/" + books_pdf.ToString();
            }


            if (f3.FileName.ToString()!=null)
            {
                books_video = Class1.GetRandomPassword(10) + ".mp4";
                //string path3 = "";
            f3.SaveAs(Request.PhysicalApplicationPath + "Librarian/books_video/" + books_video.ToString());
            path3 = "books_video/" + books_video.ToString();
            }
            
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into books values('"+bookstitle.Text+"','"+path.ToString()+"','"+path2.ToString()+"','"+path3.ToString()+"','"+ authorname.Text+"','"+isbn.Text+"','"+qty.Text+"')";
            cmd.ExecuteNonQuery();
            msg.Style.Add("display", "block");

        }
    }
}