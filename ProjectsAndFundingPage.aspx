<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectsAndFundingPage.aspx.cs" Inherits="PROG7311_POE_PART_2.ProjectsAndFundingPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects and Funding</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .project-card {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            margin-bottom: 20px;
            overflow: hidden;
            transition: box-shadow 0.3s ease-in-out;
        }
        .project-card:hover {
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.1);
        }
        .project-card img {
            width: 100%;
            height: auto;
        }
        .project-card-body {
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
                <h1>Projects and Funding</h1>
                <p>Explore and fund agriculture projects</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5">
            <div class="row">
                <!-- Project Cards -->
                <div class="col-md-4">
                    <div class="project-card">
                        <img src="path/to/project-image.jpg" alt="Project Image"/>
                        <div class="project-card-body">
                            <h5 class="card-title">Sustainable Farming Project</h5>
                            <p class="card-text">A project aimed at promoting sustainable farming practices.</p>
                            <a href="#" class="btn btn-primary">Fund Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="project-card">
                        <img src="path/to/project-image.jpg" alt="Project Image"/>
                        <div class="project-card-body">
                            <h5 class="card-title">Irrigation System Upgrade</h5>
                            <p class="card-text">Upgrade irrigation systems for better water management.</p>
                            <a href="#" class="btn btn-primary">Fund Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="project-card">
                        <img src="path/to/project-image.jpg" alt="Project Image"/>
                        <div class="project-card-body">
                            <h5 class="card-title">Training Program for Farmers</h5>
                            <p class="card-text">Conduct training programs to educate farmers on modern techniques.</p>
                            <a href="#" class="btn btn-primary">Fund Now</a>
                        </div>
                    </div>
                </div>
                <!-- Add more project cards as needed -->
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
