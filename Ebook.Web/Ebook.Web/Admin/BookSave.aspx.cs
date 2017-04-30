using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using System.Data.Entity;

namespace Ebook.Web.Admin
{
    public partial class BookSave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetParameters();
                if (Request.QueryString["Id"] != null)
                {
                    GetBook();
                }
            }

        }

        private void GetBook()
        {
            int book = Convert.ToInt32(Request.QueryString["Id"]);

            using (var db = new BookEntities())
            {
                var mybook = (from b in db.Book where b.Id == book select b).FirstOrDefault();
                ddlAuthor.SelectedValue = mybook.AuthorId_.ToString();
                ddlContent.SelectedValue = mybook.ContentId.ToString();
                ddlFormat.SelectedValue = mybook.FormatId.ToString();
                ddlPublisher.SelectedValue = mybook.PublisId.ToString();
                txtDescription.Text = mybook.Description;
                txtEdition.Text = mybook.Edition;
                txtIsbn.Text = mybook.Isbn;
                txtNumberOfPages.Text = mybook.NumberOfPages.ToString();
                txtTitle.Text = mybook.Title;

            }
        }

        private void GetParameters()
        {
          
            using (var db = new BookEntities())
            {
                ddlAuthor.DataSource = (from aut in db.Author
                                        select new { Id= aut.Id, Name= aut.Name }).ToList();



                ddlAuthor.DataTextField = "Name";
                ddlAuthor.DataValueField = "Id";
                ddlAuthor.DataBind();
                ddlAuthor.Items.Insert(0, new ListItem("Seçiniz", "0"));

                ddlContent.DataSource = (from cnt in db.Content
                                        select new  { Id = cnt.Id, Name = cnt.Name}).ToList();



                ddlContent.DataTextField = "Name";
                ddlContent.DataValueField = "Id";
                ddlContent.DataBind();
                ddlContent.Items.Insert(0, new ListItem("Seçiniz", "0"));


                ddlPublisher.DataSource = (from pblsh in db.Publisher
                                         select new { Id = pblsh.Id, Name = pblsh.Name }).ToList();



                ddlPublisher.DataTextField = "Name";
                ddlPublisher.DataValueField = "Id";
                ddlPublisher.DataBind();
                ddlPublisher.Items.Insert(0, new ListItem("Seçiniz", "0"));


                ddlFormat.DataSource = (from f in db.Format
                                           select new { Id = f.Id, Name = f.Name }).ToList();



                ddlFormat.DataTextField = "Name";
                ddlFormat.DataValueField = "Id";
                ddlFormat.DataBind();
                ddlFormat.Items.Insert(0, new ListItem("Seçiniz", "0"));


            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string fileName = string.Empty;
                if (flUpload.HasFile)
                {
                    flUpload.SaveAs(Server.MapPath("~/BookCover/") + flUpload.FileName);
                    fileName = flUpload.FileName;

                }

                using (var db = new BookEntities())
                {
                    Book b = new Book();
                    b.Title = txtTitle.Text;
                    b.Isbn = txtIsbn.Text;
                    b.PublisId = Convert.ToInt32(ddlPublisher.SelectedValue);
                    b.PublishedDate = clDate.SelectedDate;
                    b.NumberOfPages = Convert.ToInt32(txtNumberOfPages.Text);
                    b.Edition = txtEdition.Text;
                    b.FormatId = Convert.ToInt32(ddlFormat.SelectedValue);
                    b.Description = txtDescription.Text;
                    b.ContentId = Convert.ToInt32(ddlContent.SelectedValue);
                    b.AuthorId_ = Convert.ToInt32(ddlAuthor.SelectedValue);
                    if (!String.IsNullOrEmpty(fileName))
                        b.BookCoverPath = "~/BookCover/" + fileName;

                    if (Request.QueryString["Id"] != null)
                    {
                        b.Id = Convert.ToInt64(Request.QueryString["Id"]);
                        db.Entry(b).State = EntityState.Modified;
                    }
                    else db.Entry(b).State = EntityState.Added;

                    db.SaveChanges();


                  
                }

                Response.Redirect("BookDetail.aspx");
            }
            catch (Exception)
            {

                throw;
            }
           
        }

       
    }

  
}