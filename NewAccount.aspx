<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewAccount.aspx.cs" Inherits="NewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Your CSS styles here -->
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid d-flex-center mt-5 w-100">
        <div class="form-container">
            <h2 class="text-center">Create New Account</h2>
            <div class="mb-3">
                <label for="firstNameTextBox" class="form-label">First Name</label>
                <asp:TextBox ID="firstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter Your Name" />
            </div>
            <div class="mb-3">
                <label for="emailTextBox" class="form-label">Email address</label>
                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" placeholder="Enter Your Email" />
            </div>
            <div class="mb-3">
                <label for="passwordTextBox" class="form-label">Password</label>
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" CssClass="form-control" placeholder="Create a password" />
            </div>
            <div class="mb-3">
                <label for="confirmPasswordTextBox" class="form-label">Confirm Password</label>
                <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm your password" />
            </div>
            <div class="mb-3 form-check">
                <asp:CheckBox ID="termsConditions" runat="server" />
                <label class="form-check-label" for="termsConditions">
                    I agree to the <a href="#" data-bs-toggle="modal" data-bs-target="#termsModal">terms and conditions</a>
                </label>
            </div>
            <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" CssClass="btn btn-primary w-100" OnClick="btnCreateAccount_Click" />
            <p class="text-center mt-3">
                Already have an account? <a href="Login.aspx">Login here</a>
            </p>
        </div>
    </div>
    <script>
        
    </script>

</asp:Content>

