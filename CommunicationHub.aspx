<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommunicationHub.aspx.cs" Inherits="PROG7311_POE_PART_2.CommunicationHub" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Communication Hub</title>
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
        .contacts-list {
            max-height: 400px;
            overflow-y: auto;
        }
        .message-container {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            max-height: 400px;
            overflow-y: auto;
            background: #fff;
        }
        .message-input {
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
                            <a class="nav-link" href="#">Services</li>
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
                <h1>Communication Hub</h1>
                <p>Facilitate communication between farmers and employees</p>
            </div>
        </header>

        <!-- Main Content -->
        <div class="container my-5 form-container">
            <div class="row">
                <!-- Contacts List -->
                <div class="col-md-4">
                    <div class="contacts-list bg-light p-3 rounded">
                        <h5>Contacts</h5>
                        <asp:Repeater ID="ContactsRepeater" runat="server">
                            <ItemTemplate>
                                <div class="contact-item my-2 p-2 rounded bg-white">
                                    <asp:LinkButton ID="ContactLink" runat="server" Text='<%# Eval("ContactName") %>' OnClick="ContactLink_Click" CssClass="btn btn-link"></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <!-- Messaging Section -->
                <div class="col-md-8">
                    <div class="message-container bg-light p-3 rounded">
                        <h5>Messages</h5>
                        <asp:Repeater ID="MessagesRepeater" runat="server">
                            <ItemTemplate>
                                <div class="message-item my-2 p-2 rounded bg-white">
                                    <strong><%# Eval("SenderName") %>:</strong>
                                    <p><%# Eval("MessageText") %></p>
                                    <small class="text-muted"><%# Eval("Timestamp") %></small>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <!-- Message Input -->
                    <div class="message-input mt-3">
                        <asp:TextBox ID="MessageTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Type your message here..."></asp:TextBox>
                        <div class="d-flex justify-content-end mt-2">
                            <asp:Button ID="SendBtn" runat="server" CssClass="btn btn-primary" Text="Send" OnClick="SendBtn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
