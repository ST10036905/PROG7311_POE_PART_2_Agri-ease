<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarketPlace.aspx.cs" Inherits="PROG7311_POE_PART_2.MarketPlace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agri-Ease Green Energy Marketplace</title>
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
                            <a class="nav-link" href="Home.aspx">Home</a>
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
            <h1 class="form-title">Agri-Ease Green Energy Marketplace</h1>
            <div class="row">
                <div class="col-md-8">
                    <h2>Available Products</h2>
                    <asp:Repeater ID="ProductRepeater" runat="server">
                        <ItemTemplate>
                            <div class="card product-card">
                                <div class="card-header product-card-header">
                                    <%# Eval("ProductName") %>
                                </div>
                                <div class="card-body">
                                    <p>Description: <%# Eval("Description") %></p>
                                    <p>Category: <%# Eval("Category") %></p>
                                    <p>Price: <%# Eval("Price") %></p>
                                    <p>Contact: <%# Eval("ContactInfo") %></p>
                                    <a href="#" class="btn btn-success">Compare</a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-md-4">
                    <h2>Filter Products</h2>
                    <!-- Add filter options here -->
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
