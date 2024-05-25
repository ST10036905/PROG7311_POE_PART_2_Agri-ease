<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Farmer.aspx.cs" Inherits="PROG7311_POE_PART_2.Farmer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Farmers Dashboard</title>
     <!-- My style sheet-->
    <link rel="stylesheet" href="~/CssSheet/MyStyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
             <!-- Main Content -->
        <div class="container my-5">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h2 class="mb-4">Add New Product</h2>
                    <div class="mb-3">
                        <label for="ProductNameTxtBox" class="form-label">Product Name:</label>
                        <asp:TextBox ID="ProductNameTxtBox" runat="server" CssClass="form-control" placeholder="Enter product name" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ProductDescriptionTxtBox" class="form-label">Product Description:</label>
                        <asp:TextBox ID="ProductDescriptionTxtBox" runat="server" CssClass="form-control" placeholder="Enter product description" Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ProductPriceTxtBox" class="form-label">Product Price:</label>
                        <asp:TextBox ID="ProductPriceTxtBox" runat="server" CssClass="form-control" placeholder="Enter product price" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ProductQntyTxtBox" class="form-label">Product Quantity:</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter product quantity" Width="100%"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="ProductCategoryDropDownList" class="form-label">Category:</label>
                        <asp:DropDownList ID="ProductCategoryDropDownList" runat="server" CssClass="form-select" Width="100%">
                            <asp:ListItem Text="Select Category" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Fruits" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Vegetables" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Grains" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Poultry" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="d-flex justify-content-between">
                        <asp:Button ID="AddProductBtn" runat="server" CssClass="btn btn-success" Text="Add Product" />
                        <asp:Button ID="CancelBtn" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                    </div>
                </div>
            </div> 
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
