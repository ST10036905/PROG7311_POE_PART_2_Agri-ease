<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectProposal.aspx.cs" Inherits="PROG7311_POE_PART_2.ProjectProposal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Proposal</title>
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
            max-width: 700px;
            padding: 20px;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
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
                            <a class="nav-link" href="#">Services</li>
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
                <h1>Project Proposal</h1>
                <p>Submit your project proposals here</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5">
            <div class="form-container">
                <div class="form-header">
                    <h2>Project Proposal Form</h2>
                </div>
                <div class="p-4">
                    <div class="mb-3">
                        <label for="ProjectTitleTxtBox" class="form-label">Project Title</label>
                        <asp:TextBox ID="ProjectTitleTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ProjectDescriptionTxtBox" class="form-label">Description</label>
                        <asp:TextBox ID="ProjectDescriptionTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ExpertNameTxtBox" class="form-label">Expert Name</label>
                        <asp:TextBox ID="ExpertNameTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ObjectivesTxtBox" class="form-label">Objectives</label>
                        <asp:TextBox ID="ObjectivesTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ResourceReqTxtBox" class="form-label">Resource Requirements</label>
                        <asp:TextBox ID="ResourceReqTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="OutcomeTxtBox" class="form-label">Expected Outcome</label>
                        <asp:TextBox ID="OutcomeTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ContactTxtBox" class="form-label">Contact Information</label>
                        <asp:TextBox ID="ContactTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="InformationTxtBox" class="form-label">Additional Information</label>
                        <asp:TextBox ID="InformationTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="btn-group">
                        <asp:Button ID="SubmitBtn" runat="server" CssClass="btn btn-success" Text="Submit" />
                        <asp:Button ID="CancelBtn" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
