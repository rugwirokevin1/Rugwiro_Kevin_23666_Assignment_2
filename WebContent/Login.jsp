<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
    <link rel="stylesheet" href="https://yourwebsite.com/style.css">
    <link rel="stylesheet" href="style.css">
    <style>
        nav {
            color: #fff;
            text-align: center;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav li {
            display: inline;
            margin-right: 20px;
        }
        a {
            text-decoration: none;
            padding: 20px 30px;
            color: #fff;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
 <a class="navbar-brand" href="index.jsp">LOGO</a>
    <form method="post" id="signup-form" action="LoginServlet">
        <div class="section">
            <div class="container">
                <div class="row full-height justify-content-center">
                    <div class="col-12 text-center align-self-center py-5">
                        <div class="section pb-5 pt-5 pt-sm-2 text-center">
                            <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
                            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
                            <label for="reg-log"></label>
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Log In</h4>
                                                <div class="form-group">
                                                    <input type="email" name="logemail" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="logpass" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                               		<input type= "submit" value= "Login" class="btn mt-4"/>
                                                <p class="mb-0 mt-4 text-center"><a href="recover.jsp" class="link">Forgot your password?</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Sign Up</h4>
                                                <div class="form-group">
                                                    <input type="text" name="logname" class="form-style" placeholder="Your Full Name" id="logname" autocomplete="off" >
                                                    <i class="input-icon uil uil-user"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="email" name="logemail-signup" class="form-style" placeholder="Your Email" id="logemail-signup" autocomplete="off">
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="text" name="phone" class="form-style" placeholder="Your phone" id="phone" autocomplete="off" >
                                                    <i class="input-icon uil uil-phone-alt"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <input type="password" name="logpass-signup" class="form-style" placeholder="Your Password" id="logpass-signup" autocomplete="off" >
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <button class="btn mt-4" type="submit">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- <script>
        document.addEventListener("DOMContentLoaded", function () {
            const signupForm = document.querySelector("#signup-form");

            // Validation function for signup
            function validateSignup() {
                const fullName = document.querySelector("#logname").value;
                const email = document.querySelector("#logemail-signup").value;
                const phone = document.querySelector("#phone").value;
                const password = document.querySelector("#logpass-signup").value;

                if (
                    fullName.trim() === "" ||
                    email.trim() === "" ||
                    phone.trim() === "" ||
                    password.trim() === ""
                ) {
                    alert("Please fill in all fields for signup.");
                    return false;
                }

                // Check if the phone number exceeds 10 characters
                if (phone.length > 10) {
                    alert("Phone number should not exceed 10 characters.");
                    return false;
                }

                // You can add more specific validation rules here if needed

                return true;
            }

            // Attach form submission event listener
            signupForm.addEventListener("submit", function (e) {
                if (!validateSignup()) {
                    e.preventDefault(); // Prevent form submission if validation fails
                }
            });
        });
    </script> -->
</body>
</html>