using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ebook.Web.Entities;
using System.Data.Entity;

namespace Ebook.Web.Admin
{
    public partial class PublisherDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                 GetPublisherList();
            }

        }

        private void GetPublisherList()
        {
            using (var db = new BookEntities())
            {
                var publisherList = from p in db.Publisher
                                    select new PublisherDetailList { Id = p.Id, Name = p.Name };


                grv.DataSource = publisherList.ToList();
                grv.DataBind();

            }
        }
    }
}