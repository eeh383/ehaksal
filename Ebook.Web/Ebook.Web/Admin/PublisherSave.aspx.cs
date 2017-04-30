using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace Ebook.Web.Admin
{
    public partial class PublisherSave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    GetPublisher();
                }
            }

        }

        private void GetPublisher()
        {
            int publisher = Convert.ToInt32(Request.QueryString["Id"]);
            using (var db = new BookEntities())
            {
                var mypublisher = (from p in db.Publisher where p.Id == publisher select p).FirstOrDefault();

                txtName.Text = mypublisher.Name;
                txtAddress.Text = mypublisher.Address;
                txtPhoneNumber.Text = mypublisher.PhoneNumber;

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Publisher p = new Publisher();
                p.Name = txtName.Text;
                p.Address = txtAddress.Text;
                p.CreatedDate = DateTime.Now;
                p.PhoneNumber = txtPhoneNumber.Text;


                using (var db = new BookEntities())
                {

                    if (Request.QueryString["Id"] != null)
                    {
                        p.Id = Convert.ToInt32(Request.QueryString["Id"]);
                        db.Entry(p).State = EntityState.Modified;
                    }
                    else db.Entry(p).State = EntityState.Added;

                    db.SaveChanges();
                }

                Response.Redirect("PublisherDetail.aspx");

            }
            catch (Exception)
            {

                throw;
            }
        }

    }
    }
}