<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .section1 {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .column {
            display: flex;
            width: 600px;
            border-radius: 8px;
            overflow: hidden;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .leftcolumn {
            flex: 1;
            overflow: hidden;
            padding: 2%;
            align-items: center;
        }

        .leftcolumn h1 {
            font-family: 'Times New Roman', Times, serif;
        }

        .log-img1 {
            width: 100%;
            height: auto;
            border-radius: 8%;
        }

        .rightcolumn {
            flex: 1;
            padding: 20px;
        }

        .redirect-page {
            text-align: right;
            font-size: 14px;
        }

        .redirect-page a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .btn-google {
            background-color: #4285f4;
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
        }

        .par-field,
        .par-email {
            margin-top: 20px;
        }

        hr {
            border: 0;
            height: 1px;
            background-color: #ccc;
        }

        .sp1,
        .sp-lb1,
        #sp-lb2 {
            color: #777;
            font-size: 12px;
        }

        .lb-name,
        .lb-name2 {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .Name-input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #Name-input1,
        #Name-input2 {
            width: calc(100% - 18px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }

        .google-icon-wrapper {
            position: absolute;
            margin-top: 1px;
            margin-left: 1px;
            width: 40px;
            height: 40px;
            border-radius: 2px;
            background-color: white;
        }

        .google-icon {
            position: absolute;
            margin-top: 11px;
            margin-left: 11px;
            width: 18px;
            height: 18px;
        }

        .btn-text {

            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
            padding-left: 18%;
            padding-top: 5%;
            font-size: 14px;
            letter-spacing: 0.2px;
            font-family: "Roboto";
            background-color: #4285f4;
        }
    </style>
</head>

<body>

    <div class="section1">
        <div class="column">
            <div class="leftcolumn">
                <h1>Log in</h1>
                <img src="/images/buyHouse.jpg" class="log-img1" alt="Logo">
            </div>
            <div class="rightcolumn">
                <p class="redirect-page">Need an account? <a href="user"> Sign In</a></p>


                <form method="post" action="Login" >
                    <div class="field">
                        <label for="email" class="lb-name">Email</label>
                        <input type="text" required name="email" autocomplete="on" class="Name-input">
                    </div>
                    <div class="par-email">
                        <label for="password" class="lb-name">Password</label>
                        <input type="password" required name="password" autocomplete="off" placeholder="password"
                            id="Name-input1">
                    </div>
                    <% if (request.getAttribute("error") !=null && !request.getAttribute("error").toString().isEmpty())
                        { %>
                        <p style="color: red;">
                            <%= request.getAttribute("error") %>
                        </p>
                        <% } %>
                            <div>
                                <br>
                                <br>
                                <button type="submit" class="btn">Log In </button>
                            </div>
                </form>
                <div class="par-field">
                    <div class="breaker">
                        <hr>
                    </div>
                    <span class="sp1"> Or </span>
                    <div class="breaker1">
                        <hr>
                    </div>
                    <div class="google-btn">
                        <div class="google-icon-wrapper">
                            <img class="google-icon"
                                src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg" />
                        </div>
                        <button class="btn-text" type="submit">Sign in with Google</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>