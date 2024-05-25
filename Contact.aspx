<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PROG7311_POE_PART_2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Agri-Ease contact page.</h3>
        <address>
            24 Main Road<br />
            Redmond, Gauteng 8897 <br />
            <abbr title="Phone">P:</abbr>
             069 564 7862
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:S@example.com">agrisupport@gmail.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">agrimarketing@gmail.com</a>
        </address>
    </main>
</asp:Content>
