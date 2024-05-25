<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmersHub.aspx.cs" Inherits="PROG7311_POE_PART_2.FarmersHub" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Farmers Hub</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-header {
            background: #28a745;
            color: #fff;
            padding: 20px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }
        .form-container {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 30px auto;
            max-width: 900px;
            padding: 20px;
        }
        .post-container {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            background: #fff;
        }
        .comment-container {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Agri-Ease</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header class="bg-success text-white text-center py-5">
            <div class="container">
                <h1>Farmers Hub</h1>
                <p>Share and discuss farming techniques</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5 form-container">
            <!-- Post Form -->
            <div class="mb-4">
                <h5>Share your ideas</h5>
                <asp:TextBox ID="IdeaTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Type your idea here..."></asp:TextBox>
                <div class="d-flex justify-content-end mt-2">
                    <asp:Button ID="ShareBtn" runat="server" CssClass="btn btn-success" Text="Share" OnClick="ShareBtn_Click" />
                </div>
            </div>

            <!-- Posts List -->
            <div>
                <asp:Repeater ID="PostsRepeater" runat="server">
                    <ItemTemplate>
                        <div class="post-container">
                            <h6><%# Eval("FarmerName") %></h6>
                            <p><%# Eval("IdeaText") %></p>
                            <small class="text-muted"><%# Eval("Timestamp") %></small>
                            <div class="d-flex justify-content-between mt-2">
                                <asp:LinkButton ID="LikeBtn" runat="server" Text="Like" OnClick="LikeBtn_Click" CssClass="btn btn-link" />
                                <asp:LinkButton ID="CommentBtn" runat="server" Text="Comment" OnClick="CommentBtn_Click" CssClass="btn btn-link" />
                            </div>
                            <!-- Comments Section -->
                            <div class="comment-container mt-2">
                                <asp:Repeater ID="CommentsRepeater" runat="server" DataSource='<%# Eval("Comments") %>'>
                                    <ItemTemplate>
                                        <div class="mb-2">
                                            <strong><%# Eval("CommenterName") %>:</strong>
                                            <p class="mb-0"><%# Eval("CommentText") %></p>
                                            <small class="text-muted"><%# Eval("Timestamp") %></small>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <!-- Comment Input -->
                                <asp:TextBox ID="CommentTextBox" runat="server" CssClass="form-control mt-2" TextMode="MultiLine" Rows="2" placeholder="Add a comment..."></asp:TextBox>
                                <div class="d-flex justify-content-end mt-2">
                                    <asp:Button ID="PostCommentBtn" runat="server" CssClass="btn btn-primary btn-sm" Text="Post Comment" OnClick="PostCommentBtn_Click" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
