<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiscussionForm.aspx.cs" Inherits="PROG7311_POE_PART_2.DiscussionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discussion Forum</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
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
                            <a class="nav-link" href="Default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="About.aspx">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contact.aspx">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Form Content -->
        <div class="container my-5">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h1 class="form-title text-center">Discussion Forum</h1>
                    <h2 class="form-description text-center">Connect with farmers, share your stories, and get advice from experts on sustainable farming and green energy.</h2>
                    <div class="mb-3">
                        <label for="TopicTxtBox" class="form-label">Discussion Topic:</label>
                        <asp:TextBox ID="TopicTxtBox" runat="server" CssClass="form-control" Width="100%" placeholder="Enter discussion topic"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="CategoryTxtBox" class="form-label">Category:</label>
                        <asp:TextBox ID="CategoryTxtBox" runat="server" CssClass="form-control" Width="100%" placeholder="Enter category"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="CommentTxtBox" class="form-label">Comments:</label>
                        <asp:TextBox ID="CommentTxtBox" runat="server" CssClass="form-control" Height="100" TextMode="MultiLine" Width="100%" placeholder="Enter your comments"></asp:TextBox>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="PostBtn" runat="server" CssClass="btn btn-success" Text="Post Content" Width="200px" />
                        <asp:Button ID="CancelBtn" runat="server" CssClass="btn btn-danger mx-3" Text="Cancel" Width="200px" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
