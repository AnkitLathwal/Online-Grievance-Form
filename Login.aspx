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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

      <div class="d-flex justify-content-center vh-100 bg-light" style="padding-top:150px">

            <div class="card shadow-lg" style="width: 100%;height:50vh; max-width: 400px;">
    <div class="card-body p-4">
        <h3 class="card-title text-center mb-4">Login</h3>

        <!-- Login Form -->
        <form >
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
                <a href="#" class="text-decoration-none">Forgot Password?</a>
            </div>

            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>

        <div class="text-center mt-4">
            <p>Don't have an account? <a href="NewAccount.aspx" class="text-decoration-none">Sign Up</a></p>
        </div>
    </div>
               
</div>
      </div>

</asp:Content>

