using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace Ebook.Web.Admin
{
    public partial class AuthorSave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetParameters();
                if (Request.QueryString["Id"] != null)
                {
                    GetAuthor();
                }
            }

        }

        private void GetAuthor()
        {
            int author = Convert.ToInt32(Request.QueryString["Id"]);

            using (var db = new BookEntities())
            {
                var myauthor = (from a in db.Author where a.Id == author select a).FirstOrDefault();

                txtName.Text = myauthor.Name;
                txtSurname.Text = myauthor.Name;
                txtDescription.Text = myauthor.Description;

            }
        }

        private void GetParameters()
        {


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Author a = new Author();
                a.Name = txtName.Text;
                a.Surname = txtSurname.Text;
                a.CreatedDate = DateTime.Now;
                a.Description = txtDescription.Text;


                using (var db = new BookEntities())
                {

                    if (Request.QueryString["Id"] != null)
                    {
                        a.Id = Convert.ToInt32(Request.QueryString["Id"]);
                        db.Entry(a).State = EntityState.Modified;
                    }
                    else db.Entry(a).State = EntityState.Added;

                    db.SaveChanges();
                }

             Response.Redirect("AuthorDetail.aspx");

        }catch (Exception)
            {

                throw;
            }
        }
    }
}