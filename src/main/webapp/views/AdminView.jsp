<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link type="JavaScript/text">

</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --primary-color: #a1a1a1;
    --secondary-color: #1a1a1a;
    --background-color-primary: #ffffff;
    --background-color-secondary: #e3e9f0;
    --menu-hover-background: #e3e9f0;
    --menu-hover-color: #1a1a1a;

}

body.dark_colors {
    --primary-color: #a1a1a1;
    --secondary-color: #ffffff;
    --background-color-primary: #2c2d31;
    --background-color-secondary: #1a1a1a;
    --menu-hover-background: #1a1a1a;
    --menu-hover-color: #e3e9f0;
    --dark-light: #ffffff;
}

body {
    min-height: 100vh;
    background-color: var(--background-color-secondary);
    font-family: 'Poppins', sans-serif
}

#wrapper {
    width: 100%;
}

#container {
    display: flex;
    height: 100%;
}

#sidebar {
    position: relative;
    height: 100vh;
    width: 380px;
    background-color: var(--background-color-primary);
    color: var(--primary-color);
}

.sidebar_icon {
    height: 80px;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.sidebar_icon img {
    font-size: 45px;
    border-radius: 100%;
    height: 100px;
    color: var(--secondary-color);
}

.sidebar_icon p {
    margin-right: 10px;
    font-size: 20px;
    font-weight: 900;
    padding: 10px;
    color: var(--secondary-color);
}

ul {
    padding: 30px;
    list-style: none;
    color: brown;
}

ul li {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 10px 0;
    padding: 10px 20px;
    font-size: 30px;
    cursor: pointer;
}


#resizer {
    cursor: col-resize;
    position: absolute;
    height: 30px;
    width: 30px;
    border: 2px solid grey;
    background-color: var(--background-color-primary);
    right: -15px;
    top: 50%;
    transform: translateY(-50%);
    border-radius: 10px;
    display: none;
}

#sidebar:hover #resizer {
    display: flex;
    justify-content: center;
    align-items: center;
}


</style>
<body>
    <div id="wrapper">
        <div id="container">
            <div id="sidebar">
                <div class="sidebar_icon"> <img src="/images/logo.png" alt="Generic placeholder image"/>
                    <p id="company_name">House Rental Website</p>
                </div>
                <ul>
                    <li>
                        <a class="badge badge-info" href="home"  class="menu_name" >Home</a>
                    </li>
                    <li>
                        <a  class="badge badge-info" href="SellingHouse" class="menu_name">Selling House Database</a>
                    </li>
                    <li>
                        <a class="badge badge-info"href="RentingHouse" class="menu_name">Rent House Database</a>
                    </li>
                    <li>
                        <a  class="badge badge-info" href="ReviewData" class="menu_name">Review Database</a>
                    </li>
                    <li>
                        <a class="badge badge-info"href="SigninData" class="menu_name">SignIn Database</a>
                    </li>
                </ul>

            </div>
        </div>
    </div>
    <script>
        function loadContent(page) {
            var container = document.getElementById('container');
            var xhr = new XMLHttpRequest();
            xhr.open('GET', page, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    container.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
    </script>

</body>
</html>
