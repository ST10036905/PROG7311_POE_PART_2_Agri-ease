using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG7311_POE_PART_2
{
    public partial class FarmersHub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoadPosts()
        {
            // Dummy data for demonstration. Replace this with your actual data source.
            var posts = new List<dynamic>
            {
                new {
                    FarmerName = "Farmer John",
                    IdeaText = "Using cover crops to improve soil health.",
                    Timestamp = DateTime.Now.ToString(),
                    Comments = new List<dynamic>
                    {
                        new { CommenterName = "Farmer Bob", CommentText = "Great idea!", Timestamp = DateTime.Now.ToString() }
                    }
                },
                new {
                    FarmerName = "Farmer Jane",
                    IdeaText = "Implementing drip irrigation systems.",
                    Timestamp = DateTime.Now.ToString(),
                    Comments = new List<dynamic>
                    {
                        new { CommenterName = "Farmer Alice", CommentText = "Very efficient!", Timestamp = DateTime.Now.ToString() }
                    }
                }
            };

            PostsRepeater.DataSource = posts;
            PostsRepeater.DataBind();
        }

        protected void ShareBtn_Click(object sender, EventArgs e)
        {
            string ideaText = IdeaTextBox.Text;
            // Handle sharing the idea logic here (e.g., saving to database).
            IdeaTextBox.Text = string.Empty;
            LoadPosts(); // Reload posts to show the new idea.
        }

        protected void LikeBtn_Click(object sender, EventArgs e)
        {
            // Handle the like logic here.
        }

        protected void CommentBtn_Click(object sender, EventArgs e)
        {
            // Handle showing the comment input here.
        }

        protected void PostCommentBtn_Click(object sender, EventArgs e)
        {
            // Find the TextBox and get the comment text.
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            TextBox commentBox = (TextBox)item.FindControl("CommentTextBox");
            string commentText = commentBox.Text;
            // Handle posting the comment logic here (e.g., saving to database).
            commentBox.Text = string.Empty;
            LoadPosts(); // Reload posts to show the new comment.
        }
    }
}
