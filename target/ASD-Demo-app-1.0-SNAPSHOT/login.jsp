

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.demo.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            var inSignUp = false;
            
            function signUpBtnAction()
            {
                if(inSignUp == false)
                {
                    $("#confirmText").show();
                    $("#confirmInput").show();
                    document.getElementById("tipText").innerHTML = "Create your Hotelgo.com account today"
                    document.getElementById("btnText").innerHTML = "Sign up"
                    document.getElementById("registerText").innerHTML = "Already have an account? <span style='cursor: pointer; color: green;' onclick='signUpBtnAction()'><b>Sign in</b></span>"
                    document.getElementById("signInText").innerHTML = "Sign up"
                    inSignUp = true
                }
                else
                {
                    $("#confirmText").hide();
                    $("#confirmInput").hide();
                    document.getElementById("tipText").innerHTML = "You can sign in using your Hotelgo.com account to access our services."
                    document.getElementById("btnText").innerHTML = "Sign in"
                    document.getElementById("registerText").innerHTML = "Don't have an account yet? <span style='cursor: pointer; color: #c5464a;' onclick='signUpBtnAction()'><b>Sign up</b></span>"
                    document.getElementById("signInText").innerHTML = "Sign in"
                    inSignUp = false
                }
                
            }
            
        </script>    
         <style type="text/css">
            .cardBox 
            {
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                top: 20px;
                width: 350px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                padding: 20px;
                padding-bottom: 50px;
            }
            .boxText
            {
                font: .8em Arial, Tahoma, Verdana;
                background: #fff url(../images/bg.gif) repeat-x; 
                color: black;

                text-align: left;
            }
            .loginBar
            {
                border:1px solid gray;
                border-radius:5px;
                background:transparent;
                color:white;
                width:345px;
                height:30px;
                top:0;
                right:0;
            }
             .signInBtn
            {
                position:relative;
                background:#c5464a;
                border:none;
                border-radius:5px 5px 5px 5px;
                width:350px;
                height:40px;
                top:15px;
                right:0px;
                cursor:pointer
          
            }
            .text
            {
                font-size:16px;
                color:#F9F0DA;
            }
            
        </style>
    </head>
    <%
        String emailErr = request.getParameter("emailErr");
        String passErr = request.getParameter("passErr");
        String emptyErr = request.getParameter("empty");
    %>
    
    <body>
        <div style="text-align: center">
            <div class="cardBox">
                <div class="boxText">
                <h1 id="signInText">Sign in</h1>
                <p id="tipText">You can sign in using your Hotelgo account to access our services.</p>
                <p>Email address</p>
                <input class="loginBar">
                <p>Password</p>
                <input class="loginBar">
                <p id="confirmText" style="display:none;">Confirm Password</p>
                <input id="confirmInput" style="display:none" class="loginBar">
                </div>
                   <button class="signInBtn"><span id="btnText"class="text">Sign in</span></button>
                   <p id="registerText" class="boxText" style="position: relative; float: top; top: 30px; text-align: center;" >Don't have an account yet? <span style="cursor: pointer; color: #c5464a;" onclick="signUpBtnAction()"><b>Sign up</b></span></p>
            </div>
        </div>

    </body>

</html>
