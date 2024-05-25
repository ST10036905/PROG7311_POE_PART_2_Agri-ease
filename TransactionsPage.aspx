<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionsPage.aspx.cs" Inherits="PROG7311_POE_PART_2.TransactionsPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transactions</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-header {
            background: #007bff;
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
            max-width: 1100px;
            padding: 20px;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
        }
        .table-container {
            margin-top: 20px;
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
        <header class="bg-primary text-white text-center py-5">
            <div class="container">
                <h1>Transactions</h1>
                <p>View and manage all transactions made in the portal</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5 form-container">
            <!-- Search and Filter Section -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="SearchTxtBox" class="form-label">Search Transactions</label>
                    <asp:TextBox ID="SearchTxtBox" runat="server" CssClass="form-control" placeholder="Search by keyword"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label for="DateFromTxtBox" class="form-label">From Date</label>
                    <asp:TextBox ID="DateFromTxtBox" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <label for="DateToTxtBox" class="form-label">To Date</label>
                    <asp:TextBox ID="DateToTxtBox" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="d-flex justify-content-end mb-4">
                <asp:Button ID="FilterBtn" runat="server" CssClass="btn btn-primary" Text="Filter" />
            </div>

            <!-- Transactions Table -->
            <div class="table-responsive table-container">
                <table  id="TransactionsTable" class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Transaction ID</th>
                            <th scope="col">Date</th>
                            <th scope="col">Description</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Status</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Sample Data Row -->
                        <tr>
                            <td>TRX123456</td>
                            <td>2024-05-20</td>
                            <td>Payment for Solar Panels</td>
                            <td>$1,200.00</td>
                            <td>Completed</td>
                            <td>
                                <div class="btn-group" role="group">
                                    <asp:Button ID="ViewBtn" runat="server" CssClass="btn btn-info btn-sm" Text="View" />
                                    <asp:Button ID="EditBtn" runat="server" CssClass="btn btn-warning btn-sm" Text="Edit" />
                                    <asp:Button ID="DeleteBtn" runat="server" CssClass="btn btn-danger btn-sm" Text="Delete" />
                                </div>
                            </td>
                        </tr>
                        <!-- More rows as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
