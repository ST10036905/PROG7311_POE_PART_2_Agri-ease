<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hub.aspx.cs" Inherits="PROG7311_POE_PART_2.Hub" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resource Submission Form</title>
    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
    <style type="text/css">
        body {
            background-color: darkolivegreen;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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

        <!-- Header -->
        <header class="bg-success text-white text-center py-5">
            <div class="container">
                <h1>Common dashboard</h1>
            </div>
        </header>                                                                                                     

            <hr />
            <!-- Product List -->
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mb-4">Products Available</h2>
                    <asp:Repeater ID="ProductRepeater" runat="server">
                        <HeaderTemplate>
                            <div class="col-md-3">
                                <img src='<%# Eval("ProductImage") %>' class="card-img" alt="Product Image" />
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-3 font-weight-bold">Product Name</div>
                                <div class="col-md-3 font-weight-bold">Product Name</div>
                                <div class="col-md-3 font-weight-bold">Description</div>
                                <div class="col-md-2 font-weight-bold">Price</div>
                                <div class="col-md-2 font-weight-bold">Category</div>
                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="row mb-2">
                                <div class="col-md-3"><%# Eval("ProductImage") %></div>
                                <div class="col-md-3"><%# Eval("ProductName") %></div>
                                <div class="col-md-3"><%# Eval("ProductDescription") %></div>
                                <div class="col-md-2"><%# Eval("ProductPrice", "{0:C}") %></div>
                                <div class="col-md-2"><%# Eval("ProductCategory") %></div>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate>
                            <div class="row mt-4">
                                <div class="col-md-12">
                                    <asp:Label ID="EmptyDataLabel" runat="server" CssClass="text-danger" Visible="false" Text="No products found."></asp:Label>
                                </div>
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
