using Ebook.Web.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ebook.Web.Admin
{
    public partial class BookDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {

                GetBookList();
            }
        }

        private void GetBookList()
        {
            using (var db = new BookEntities())
            {

                var bookList = from b in db.Book
                               join a in db.Author on b.AuthorId_ equals a.Id
                               select new BookDetailList { Id = b.Id, AuthorName = a.Name + " " + a.Surname, Title = b.Title };


                grv.DataSource = bookList.ToList();
                grv.DataBind();
            }


            }
    }
}