<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education.aspx.cs" Inherits="PROG7311_POE_PART_2.Education" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Education</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    <!-- Custom CSS -->
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
                <h1>Agri-Ease Educational Hub</h1>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form>
                        <div class="mb-3">
                            <label for="CourseTitleTxtBox" class="form-label">Course Title:</label>
                            <asp:TextBox ID="CourseTitleTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="ParticipantNameTxtBox" class="form-label">Participant Name:</label>
                            <asp:TextBox ID="ParticipantNameTxtBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="RoleDropDownList" class="form-label">Role:</label>
                            <asp:DropDownList ID="RoleDropDownList" runat="server" CssClass="form-select" Width="100%"></asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label for="CalendarBox" class="form-label">Start Date:</label>
                            <asp:Calendar ID="CalendarBox" runat="server" CssClass="form-control" Width="100%"></asp:Calendar>
                        </div>
                        <div class="mb-3">
                            <label for="DurationTxtBox" class="form-label">Duration (weeks):</label>
                            <asp:TextBox ID="DurationTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="Week"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="InformationTxtBox" class="form-label">Additional Information:</label>
                            <asp:TextBox ID="InformationTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="ContactTxtBox" class="form-label">Contact Information:</label>
                            <asp:TextBox ID="ContactTxtBox" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="d-flex justify-content-between">
                            <asp:Button ID="RegisterBtn" runat="server" CssClass="btn btn-success" Text="Register" />
                            <asp:Button ID="CancelBtn" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
