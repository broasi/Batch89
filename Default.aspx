<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Batch89._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script>
        $(document).ready(function () {
            $('#btnClick').click(function () {
                //var formData = $(this).serialize();
                // $post('login.aspx', formData, processData);
                alert('dsds');
               $.get JSON('login.aspx','contact=123',processContacts);
                function processContacts(data) {
                var infoHTML='<p>Contact: ' + data.firstName;
                infoHTML+=' ' + data.lastName + '<br>';
                infoHTML+='Phone: ' + data.phone + '</p>';
                $('#info').html(infoHTML);
                }
            });
        });
    </script>
    <h2>
        Welcome to ASP.NET!waley
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
        <br /><br />
        <div id="info" style="color:Blue">
           This is it
        </div><br /><br />
        <asp:Button ID="btnClick" runat="server" Text=" Click Me " />
    </p>    
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
