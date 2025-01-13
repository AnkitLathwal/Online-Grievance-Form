<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewAccount.aspx.cs" Inherits="Default2" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    /* General styles */
    .form-container {
        max-width: 500px;
        padding: 30px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    .container-fluid {
        height: auto;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Media Query for small devices (phones, <576px) */
    @media (max-width: 576px) {
        .container-fluid {
            padding: 10px;
        }

        .form-container {
            width: 100%;
            padding: 20px;
        }
    }

    /* Media Query for medium devices (tablets, 576px to 768px) */
    @media (min-width: 576px) and (max-width: 768px) {
        .form-container {
            max-width: 400px;
        }

        h2 {
            font-size: 1.5rem;
        }
    }

    /* Media Query for large devices (desktops, >1200px) */
    @media (min-width: 1200px) {
        .form-container {
            max-width: 600px;
        }

        h2 {
            font-size: 2rem;
        }
    }
</style>
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container-fluid d-flex-center mt-5 w-100">
        <div class="form-container">
            <h2 class="text-center">Create New Account</h2>

            <!-- Account Creation Form -->
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input id="firstName" class="form-control" placeholder="Enter Your Name" />
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" placeholder="Enter Your Email" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Create a password" required>
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm your password" required>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="termsConditions">
                <label class="form-check-label" for="termsConditions">
                    I agree to the <a href="#" data-bs-toggle="modal" data-bs-target="#termsModal">terms and conditions</a>
                </label>
            </div>

            <button type="submit" class="btn btn-primary w-100">Create Account</button>

            <p class="text-center mt-3">
                Already have an account? <a href="Login.aspx">Login here</a>
            </p>
        </div>
    </div>

    <!-- Terms and Conditions Modal -->
    <div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="termsModalLabel">Terms and Conditions</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>
                        By creating an account, you agree to our terms and conditions. This includes compliance with our privacy policy and ensuring the information provided is accurate and true.
                    </p>
                    <p>
                        You agree not to use the account for unlawful purposes or activities that may harm others or violate their rights.
                    </p>
                    <!-- Add more terms here as needed -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
