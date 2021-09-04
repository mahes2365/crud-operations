<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Operations</title>
    <link rel="stylesheet" href="home.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <section id="home" class="home">
        <aside class="nav">
            <nav><a href="#home">Home</a></nav>
            <nav><a href="#insert">Insertion</a></nav>
            <nav><a href="#select">Selection</a></nav>
            <nav><a href="#update">Updation</a></nav>
            <nav><a href="#delete">Deletion</a></nav>
        </aside>
        <article class="home-content">
            <section class="img-container">
                <img src="images/welcome.svg" alt="welcomeimg"  />
            </section>
            <section class="content-container">
                <article>
                    <h2>Welcome</h2>
                    <p>Here you can perform</p>
                </article>
                <section class="thumb-img">
                   <div class="insert-img"><img src="images/insert.svg" alt="insertimg"/><p class="text1">Insert</p></div>
                   <div class="select-img"><img src="images/select.svg" alt="selectimg"/><p class="text2">Select</p></div>
                   <div class="update-img"><img src="images/update.svg" alt="updateimg"/><p class="text3">Update</p></div>
                   <div class="delete-img"><img src="images/delete.svg" alt="deleteimg"/><p class="text4">Delete</p></div>
                </section>
            </section>
        </article> 
    </section>
    <section id="insert" class="insert"></section>
    <section id="select" class="select"></section>
    <section id="update" class="update"></section>
    <section id="delete" class="delete"></section>
</body>
    <script src="home.js">
    
    </script>
</html>
