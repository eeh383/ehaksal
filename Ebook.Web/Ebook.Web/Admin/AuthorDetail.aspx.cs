using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ebook.Web.Entities;

namespace Ebook.Web.Admin
{
    public partial class AuthorDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                GetAuthorList();
            }

        }
        private void GetAuthorList()
        {


            using (var db = new BookEntities())
            {
                var authorList = from a in db.Author
                                 select new AuthorDetailList { Id = a.Id, Name = a.Name + " " + a.Surname };



                grv.DataSource = authorList.ToList();
                grv.DataBind();

            }

        }
    }
}