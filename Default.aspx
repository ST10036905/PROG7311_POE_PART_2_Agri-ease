<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PROG7311_POE_PART_2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: darkolivegreen;
            font-family: Arial, sans-serif;
            color: ghostwhite;
        }

        h1, h2 {
            color: ghostwhite;
        }

       
        .locations img {
            width: 50px; /* Adjust the width here */
            height: 30px; /* Maintains the aspect ratio */
            margin-left: 20px;
        }

    </style>

    <main class="main-container">
        <section aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Agri-Ease Web Application</h1>
            <p class="lead">Our robust application designed for farmers to engage with their stakeholders.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary">Learn more &raquo;</a></p>
        </section>

        <div class="locations-container">
            <section class="locations" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Our Locations :</h2>
                <p>Western Cape</p>
                <p>Gauteng</p>
                <p>Eastern Cape</p>
                <p>Kwazulu-Natal</p>
                <p>Northern Cape</p>
                <p>Limpopo</p>
                <p>Mpumalanga</p>
            </section>
            <img src="https://i.pinimg.com/originals/58/fe/22/58fe228a9afaa8f283161caa558d49f8.png" alt="South Africa Map - High Resolution Provinces">
        </div>
    </main>
</asp:Content>
