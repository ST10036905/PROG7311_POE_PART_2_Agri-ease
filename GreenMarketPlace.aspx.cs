using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG7311_POE_PART_2
{
    public partial class GreenMarketPlace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LoadProducts();
            }

        }

        protected void LoadProducts()
        {
            // Dummy data for demonstration. Replace this with your actual data source.
            var products = new List<dynamic>
            {
                new {
                    ProductName = "Organic Tomatoes",
                    ProductDescription = "Fresh organic tomatoes from our farm.",
                    ProductPrice = "3.99",
                    ProductImageUrl = "path/to/tomato.jpg",
                    Comments = new List<dynamic>
                    {
                        new { CommenterName = "Farmer Bob", CommentText = "Great quality!", Timestamp = DateTime.Now.ToString() }
                    }
                },
                new {
                    ProductName = "Free-Range Eggs",
                    ProductDescription = "Free-range eggs from healthy chickens.",
                    ProductPrice = "5.99",
                    ProductImageUrl = "path/to/eggs.jpg",
                    Comments = new List<dynamic>
                    {
                        new { CommenterName = "Farmer Alice", CommentText = "Love the taste!", Timestamp = DateTime.Now.ToString() }
                    }
                }
            };

            ProductsRepeater.DataSource = products;
            ProductsRepeater.DataBind();
        }

        protected void ListProductBtn_Click(object sender, EventArgs e)
        {
            string productName = ProductNameTextBox.Text;
            string productDescription = ProductDescriptionTextBox.Text;
            string productPrice = ProductPriceTextBox.Text;

            // Handle file upload logic here
            string productImageUrl = ""; // Save the uploaded file and get its URL.

            // Handle adding the new product to your data source here.

            ProductNameTextBox.Text = string.Empty;
            ProductDescriptionTextBox.Text = string.Empty;
            ProductPriceTextBox.Text = string.Empty;
            ProductImageUpload.Attributes.Clear();

            LoadProducts(); // Reload products to show the new product.
        }

        protected void LikeBtn_Click(object sender, EventArgs e)
        {
            // Handle like logic here
        }

        protected void CommentBtn_Click(object sender, EventArgs e)
        {
            // Handle comment logic here
        }

        protected void PostCommentBtn_Click(object sender, EventArgs e)
        {
            var commentTextBox = (TextBox)((Control)sender).Parent.FindControl("CommentTextBox");
            string commentText = commentTextBox.Text;
            // Handle posting the comment logic here

            commentTextBox.Text = string.Empty;

            LoadProducts(); // Reload products to show the new comment.
        }
    }
}
