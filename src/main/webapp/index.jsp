<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@page import="java.sql.*,com.project.helpers.ConnectionProvider,com.project.entities.*,com.project.dao.*,java.util.*" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <link rel="icon" type="image/png" href="images/blog.png" />
            <script src="https://kit.fontawesome.com/aa352f40dd.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
            <link rel="stylesheet" href="css/style.css" />
            <title>Ayush-Blog</title>
            <style>
                .banner_background {
                    clip-path: polygon(32% 0, 70% 0%, 100% 0, 100% 93%, 69% 100%, 24% 93%, 0 100%, 0 0);
                }
            </style>
        </head>

        <body>
            <!-- Navbar -->
            <%@include file="Navbar.jsp" %>

                <!-- Banner -->
                <div class="card p-0 m-0">
                    <div class="jumbotron primary-background text-white  banner_background">
                        <div class="container">
                            <h3 >Welcome To Ayushspace</h3>
                            <h3>Blogger</h3>
                            <p>
                                The Blogger API v3 allows client applications to view and update Blogger content. Your client application can use Blogger API v3 to create new blog posts, edit or delete existing posts, and query for posts that match particular criteria.
                            </p>
                            <button class="btn btn-outline-light btn-lg">
								<i class="fa-solid fa-up-right-from-square"></i>&nbsp;Start ! it's
								Free
							</button>
                            <a href="login.jsp" class="btn btn-outline-light btn-lg"><i
									class="fa-solid fa-user"></i>&nbsp;Login In</a>
                        </div>
                    </div>
                </div>

                <!-- cards -->
                <br />
                <div class="container">
                    <div class="row mb-2">
                        <% PostDao p=new PostDao(ConnectionProvider.getConnection());
					       ArrayList<Catagory> al =p.getAllCategories();

						for(Catagory c:al){

						%>
                        <div class="col-my-3 m-1" style="box-shadow:2px 2px 2px 1px  skyblue;" >
                            <div class="card" style="width: 23rem;border-style:none;">
                                <div class="card-body" >
                                    <h5 class="card-title"><%=c.getName() %></h5>
                                    <p class="card-text">
                                        <%=c.getDescription() %>
                                    </p>
                                </div>
                                <div class="card-body"><a href="login.jsp" class="btn" >Read more..</a></div>
                            </div> 
                        </div>
                    
                        <% } %> 
                    </div>
                </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                <script src="js/myjs.js"></script>
                <script>
                            //search post title
                            let search = document.getElementById('searchTxt');
                            search.addEventListener('input', function (e) {
                                let inputVal = search.value;
                                //console.log('input event fired', inputVal);
                                let noteCard = document.getElementsByClassName('card');
                                Array.from(noteCard).forEach(function (element) {
                                    let cardTxt = element.getElementsByClassName('card-title')[0].innerText;
                                    if (cardTxt.includes(inputVal)) {
                                        element.style.display = 'block';
                                    } else {
                                        element.style.display = 'none';
                                    }
                                })
                            })
                 </script>
        </body>

        </html>