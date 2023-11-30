
<%@ page import="com.api.web.model.User" language="java" contentType="text/html" %> 
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--Box Icons-->
  <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Home Page</title>
</head>
<style>
    *{
    font-family: 'Poppins',sans-serif;
    scroll-behavior: smooth;
    
    list-style: none;
    text-decoration: none;
}
/*Variables*/
:root{
    --main-color:#2288ff;
    --second-color:#192f6a;
    --text-color:#543162;
    --bg-color:rgb(238, 246, 241);

/* box shadow */
    --box-shadow:2px 2px 18px rgb(14 52 54 / 15%);
}
img{
    width:100%;
}
body{
    color:var(--text-color);
    background-color: whitesmoke;
}
section{
    padding: 4.5rem 0 3rem;
}
.container{
    max-width:1068px;
    margin:auto;
    display:flex;
}

/*home*/
.home{
    /* margin-top: 1rem; */
    background: url(images/home.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    height: 750px;
    border-radius: 1rem;
    display: flex;
    align-items: center;
}
.btn{
    padding: 8px 22px;
    background: var(--main-color);
    color: var(--bg-color);
    border-radius: 5rem;
}
.btn:hover{
    background: #3492fd;
    transition: all 0.6s ease;

}
.home-text{
    padding-left: 35px;
}
.home-text h1{
    color: var(--bg-color);
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 1rem;
}
.about{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(18rem, auto));
    gap: 2rem;

}
.about-img img{
    border-radius: 3rem 0 3rem 3rem;
}
.about-img1 img{
    border-radius: 3rem 0 3rem 3rem;
}
.about-text span{
    font-size: 1rem;
    text-transform: uppercase;
    font-weight: 500;
    color: var(--main-color);
}
.about-text h2{
    font-size: 1.7rem;
}
.about-text1 p{
    font-size: 0.938rem;
    margin: 1rem 0 1rem;
}
.about-text1 span{
    font-size: 1rem;
    text-transform: uppercase;
    font-weight: 500;
    color: var(--main-color);
}
.about-text1 h2{
    font-size: 1.7rem;
}
.about-text1 p{
    font-size: 0.938rem;
    margin: 1rem 0 1rem;
}
/*properties*/
.heading{
    text-align: center;

}
.heading span{
 font-weight: 500;
 color: var(--main-color);
}
.heading h1{
    font-size: 1.8rem ;
    text-align: center;
}
.heading p{
    font-size: 0.938rem ;
}
.properties{
    display: grid;
    background: #c1b4afc4;
    border-radius: 2rem;

}
/* .properties-img img{
    border-radius: 3rem 0 3rem 3rem;
} */
</style>
<body>
     <!-- NavBar -->
       <div class="container-fluid col-md-12 d-flex">
    <div class="media col-md-1">
        <img class="mt-2 border img-fluid" src="/images/logo.png" alt="Generic placeholder image">
    </div>

    <div class="container-fluid mt-4 ">
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse col-md-12 ml-2" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active ml-4">
                        <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active ml-4">
                        <a class="nav-link" href="#about">About <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active ml-4">
                        <a class="nav-link" href="ViewSell">Sell</a>
                    </li>
                    <li class="nav-item active ml-4">
                        <a class="nav-link" href="ViewRent">Rent</a>
                    </li>
                    <li class="nav-item active ml-4">
                        <a class="nav-link" href="properties">Properties</a>
                    </li>
                </ul>
                <div>
                  <% List<User> signList = (List<User>) request.getAttribute("home");
                    if (signList != null && !signList.isEmpty()) {
                    for (User sign : signList) {
                    %>
                      <h1>hii</h1>
                    <label for="UserName" class="text-info">UserName</label>
                      <input type="Name" required class="form-control" readonly name="name" id=""
                      value="<%= sign.getName()%>" placeholder="User-Name">
                    </div>
                    <% } } %>
                  </div>
                
                <!-- Move the registration and logout buttons inside the <ul> and add ml-auto class -->
                  <div>
                    <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Register
                       </button> 
                       <div class="dropdown-menu">
                         <a class="dropdown-item" href="RentForm">Rent Form</a>
                         <a class="dropdown-item" href="Form" >Form</a>
                       </div>
                 </div>
                
                 <div>
                 <a class="nav-link  text-info " href="logout">Logout</a>
                </div>
              </div>
        </nav>
    </div>
</div>

  
  <!--Home-->
   
    <section class="home container" id="home">
        <div class="home-text">
            <h1>Welcome To Our House <br>   Rental Website!</h1>
            <a href="user" class="btn">Sign Up</a>
        </div>
    </section> 
    <!-- About -->
    <section class="about container" id="about">
        
        <div class="about-img">
            <img src="images/img4.jpg" alt=" ">
        </div>
        <div class="about-text">
            <span>About Us</span>
            <br>
            <h2>We Provide The Best <br> Property For You !</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam est dolorem, voluptate facere aliquid culpa temporibus non earum voluptas, modi, mollitia nobis corporis! Vitae quae nobis et ipsam sunt recusandae.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam est dolorem, voluptate facere aliquid culpa temporibus non earum voluptas, modi, mollitia nobis corporis! Vitae quae nobis et ipsam sunt recusandae.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam est dolorem, voluptate facere aliquid culpa temporibus non earum voluptas, modi, mollitia nobis corporis! Vitae quae nobis et ipsam sunt recusandae.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
    
    </section>
    <!--Sell and Rent -->
    <!--Properties-->
    <section class="properties container" id="properties">
        <div class="heading">
            <h1>Our Featured Properties</h1>
            <p>Lorem ipsum dolor sit amet consectetur <br>adipisicing elit. Dolores reiciendis quisquam ipsum commodi distinctio dolore minus! Facilis placeat illo perferendis <br>officiis cum tenetur libero, deleniti non saepe eum blanditiis vero.</p>
           
        </div>
    </section>
    <div class="container-fluid d-flex">

        <div class="col-md-6">
          <div class="card mb-3  mt-5">
            <img class="card-img-top" src="images/img1.jpg" alt="Card image cap">
            <div class="card-body">
              <h1 class="card-title">Keep Searching</h1>
              <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quae maiores omnis veritatis quas, ad excepturi repudiandae
                 officia exercitationem eligendi cum sed repellendus perspiciatis vero labore distinctio praesentium provident laboriosam.
                  Nemo.. Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Dignissimos voluptas at neque quasi maiores tempore eos in veritatis fugiat
                aliquid11?</p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="media  mt-5">
            <img class="mr-3" style="width: 10rem;" src="images/img2.jpg" alt=" placeholder image">
            <div class="media-body">
              <h5 class="mt-0">Heading</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
              purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
              vulputate fringilla. Donec lacinia congue felis in faucibus.
            </div>
           
          </div>
          <div class="media  mt-5">
            <img class="mr-3" style="width: 10rem;" src="images/img3.jpg" alt=" placeholder image">
            <div class="media-body">
              <h5 class="mt-0">Heading</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
              purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
              vulputate fringilla. Donec lacinia congue felis in faucibus.1
            </div>
           
          </div>
        
          <div class="media  mt-5">
            <img class="mr-3" style="width: 10rem;" src="images/img4.jpg" alt=" placeholder image">
            <div class="media-body">
              <h5 class="mt-0">Heading</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
              purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
              vulputate fringilla. Donec lacinia congue felis in faucibus.
            </div>
            
          </div>
          <div class="media  mt-5">
            <img class="mr-3" style="width: 10rem;" src="images/img3.jpg" alt=" placeholder image">
            <div class="media-body">
              <h5 class="mt-0">Heading</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
              purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
              vulputate fringilla. Donec lacinia congue felis in faucibus.1
            </div>
          </div>
        </div>
      </div>
 <!--Footer-->
  <div class="container-fluid d-flex ">
  <div class="container ml-3  d-flex">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link " href="AdminView">Admin View</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Prices</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Deals</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Our Service</a>
      </li>
    </ul>
  </div>
  <form class="container-fluid  border align-items-center" method="post" action="/send">
    <p class="card-text "><large class="text-muted">Reviews</small></p>
    <div class="form-group ml-auto">
      <label for="exampleInputEmail1">Email Address</label>
      <input type="email" class="form-control col-md-8" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">Your data is secured !!</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Feedback</label>
      <input type="text" class="form-control col-md-8" name="review" id="exampleInputPassword1" placeholder="Message:">
    </div>
    <button type="submit" class="btn btn-primary" onclick="Message">Submit</button>
   
  </form>
  
</div>
<script type="text/javaScript">
  function Message(){
    alert("Successfully submitted.")
  }
</script>
  <!-- social-media starts..  -->
  
  <div class="container-fluid ">
    <div>Follow us on</div>
    <i class="fa-brands fa-youtube fa-2xl ml-4 " style="color: #e90101;"></i>
    <i class="fa-brands fa-facebook fa-2xl ml-4" style="color: #005eff;"></i>
    <i class="fa-brands fa-twitter fa-2xl ml-4" style="color: #005cfa;"></i>
    <i class="fa-brands fa-instagram fa-2xl ml-4" style="color: #ea2e41;"></i>
  </div>

  <hr style="border: 1px solid rgb(195, 208, 221);">
    

    
  <!-- font awesome kits starts  -->
  <script src="https://kit.fontawesome.com/9d0c5215d1.js" crossorigin="anonymous"></script>
  <!-- font awesome kits end -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>
</html>