<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CorsesAndEducationPage.aspx.cs" Inherits="PROG7311_POE_PART_2.CorsesAndEducationPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Courses and Education</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .course-card {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            margin-bottom: 20px;
            overflow: hidden;
            transition: box-shadow 0.3s ease-in-out;
        }
        .course-card:hover {
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.1);
        }
        .course-card img {
            width: 100%;
            height: auto;
        }
        .course-card-body {
            padding: 20px;
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
                <h1>Courses and Education</h1>
                <p>Explore and enroll in our educational offerings</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5">
            <div class="row">
                <!-- Course Cards -->
                <asp:Repeater ID="CoursesRepeater" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="course-card">
                                <img src='<%# Eval("ImagePath") %>' alt="Course Image"/>
                                <div class="course-card-body">
                                    <h5 class="card-title"><%# Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <a href="#" class="btn btn-primary">Enroll Now</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <!-- Add more course cards as needed -->
            </div>
        </div>

        <!-- New Course Form -->
        <div class="container my-5">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h2>Create New Course</h2>
                    <form>
                        <div class="mb-3">
                            <label for="TitleTxtBox" class="form-label">Title</label>
                            <asp:TextBox ID="TitleTxtBox" runat="server" CssClass="form-control" Width="100%" />
                        </div>
                        <div class="mb-3">
                            <label for="DescriptionTxtBox" class="form-label">Description</label>
                            <asp:TextBox ID="DescriptionTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" />
                        </div>
                        <div class="mb-3">
                            <label for="ImageFileUpload" class="form-label">Image</label>
                            <asp:FileUpload ID="ImageFileUpload" runat="server" CssClass="form-control" />
                        </div>
                        <asp:Button ID="CreateCourseBtn" runat="server" Text="Create Course" CssClass="btn btn-success" />
                    </form>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0></script>
</body>
</html>
