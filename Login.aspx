<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        @media (max-width: 768px) {
            /* Adjust card width for smaller screens */
            .card {
                width: 90%;
            }
        }
    </style>
    <script>
        
        document.addEventListener("DOMContentLoaded", function () {
            function handleForgetPassword() {
                let handleLogin = document.getElementById("loginForm");
                let forgotPassword = document.getElementById("ForgetPassword");
                let handlePassword = document.getElementById("eventPassword");
                let backToLogin = document.getElementById("backToLogin");

                // Handle "Forgot Password?" click
                handlePassword.addEventListener('click', function (event) {
                    event.preventDefault();  // Prevent default action
                    handleLogin.style.display = "none ";
                    handleLogin.classList.remove("d-flex")// Hide login form
                    forgotPassword.style.display = "block";  // Show forgot password form
                });

                // Handle "Back to Login" click
                backToLogin.addEventListener('click', function (event) {
                    event.preventDefault();  // Prevent default action
                    handleLogin.style.display = "block";  // Show login form
                    forgotPassword.style.display = "none";  // Hide forgot password form
                    handleLogin.classList.add("d-flex")// Hide login form

                });
            }

            handleForgetPassword();  // Call the function when DOM is ready
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Login Form -->
    <div class="d-flex justify-content-center vh-100 bg-light" style="padding-top:150px;" id="loginForm">
        <div class="card shadow-lg" style="width: 100%; height:60vh; max-width: 400px;">
            <div class="card-body p-4">
                <h3 class="card-title text-center mb-4">Login</h3>
                <form>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
                    </div>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="rememberMe">
                            <label class="form-check-label" for="rememberMe">Remember me</label>
                        </div>
                        <a href="#" class="text-decoration-none" id="eventPassword">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>
                <div class="text-center mt-4">
                    <p>Don't have an account? <a href="NewAccount.aspx" class="text-decoration-none">Sign Up</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Forgot Password Form -->
    <div class="bg-light" id="ForgetPassword" style="display:none;">
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="card shadow p-4" style="max-width: 400px; width: 100%;">
                <h2 class="text-center mb-4">Forgot Password</h2>
                <form>
                    <div class="mb-3">
                        <label for="forgetEmail" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="forgetEmail" placeholder="Enter your email" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit</button>
                </form>
                <div class="text-center mt-3">
                    <a href="#" class="text-decoration-none" id="backToLogin">Back to Login</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
