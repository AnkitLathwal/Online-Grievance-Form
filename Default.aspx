<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

        <style>
    footer {
        background-color: #222;  /* Darker background */
    }
    footer a:hover {
        text-decoration: underline;  /* Underline on hover */
    }
</style>
</head>
<body>

     <form id="form1" runat="server">
     <!-- Navbar -->
     <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
         <div class="container">
             <a class="navbar-brand fw-bold" href="#">
                 <img src="https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L2pvYjcyOC0wMzgtcC5wbmc.png" alt="Logo" class="rounded-circle" width="40" height="40">
                
             </a>

             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
             </button>

             <div class="collapse navbar-collapse" id="navbarNav">
                 <ul class="navbar-nav ms-auto">
                     <li class="nav-item">
                         <a class="nav-link active" aria-current="page" href="Default.aspx">Home</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">About</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Services</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Portfolio</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Contact</a>
                     </li>
                 </ul>

                 <div class="d-flex ms-lg-3">
                     <a href="Login.aspx" class="btn btn-outline-primary me-2">Login</a>
                     <a href="NewAccount.aspx" class="btn btn-primary">Sign Up</a>
                 </div>
             </div>
         </div>
     </nav>

     <!-- Main Content Placeholder -->

     <!-- Footer -->
    

    <div class="container MainContainer mt-5 w-50" >
   <h2  style="text-align:center; font-size:50px" class=" mb-4 ">Online Grievance Form</h2>
     
            <!-- Row 1 -->
            <div   class="row mb-3" >
                <div class="col-md-6">
                    <label asp-for="AcademicYear" class="form-label">Academic Year</label>
                    <select asp-for="AcademicYear" class="form-select">
                        <option value="2025-2026" selected="selected">2025-2026</option>
                      
                    </select>
                </div>
                <div class="col-md-6">
                    <label asp-for="Name" class="form-label">Name<span class="text-danger">*</span></label>
                    <input asp-for="Name" class="form-control" placeholder="Enter Here" required="required"/>
                </div>
            </div>
            <!-- Row 2 -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label asp-for="StakeHolderType" class="form-label">Stake Holder Type<span class="text-danger">*</span></label>
                    <select asp-for="StakeHolderType" class="form-select" required="required">
                        <option value="" selected="selected" disabled="disabled">----Select----</option>
                        <option value="Student">Student</option>
                        <option value="Parent">Parent</option>
                        <option value="Staff">Staff</option>
                    </select>
                </div>
                <div class="col-md-6">
                    <label asp-for="ContactNumber" class="form-label">Contact No.<span class="text-danger">*</span></label>
                    <input asp-for="ContactNumber" class="form-control" placeholder="Enter Here" required="required"/>
                </div>
            </div>
            <!-- Row 3 -->
            <div  class="mb-3 ">
              
           <label asp-for="Email"class="form-label">Email</label>
            <input id="Email" placeholder="Enter Your Email" class="form-control" required="required"/>
            </div>
            <!-- Row 4 -->
            <div class="mb-3" >
                <label asp-for="Subject" class="form-label">Subject of Grievance<span class="text-danger">*</span></label>
               <textarea asp-for="Subject" class="form-control" placeholder="Enter Here" required="required" rows="3" ></textarea>
            </div>
            <!-- Row 5 -->
            <div class="mb-3" >
                <label asp-for="Matter" class="form-label">Matter of Grievance<span class="text-danger">*</span></label>
                <textarea asp-for="Matter" class="form-control" rows="3" placeholder="Enter Here" required="required"></textarea>
            </div>
            <!-- Submit Button -->
            <div class="text-center" >
                <button type="submit" id="openPdfButton" class="btn btn-primary ">Submit</button>
            </div>
        
    </div>


             <footer class="bg-dark text-white mt-5 py-4">
        <div class="container text-center">
            <p class="mb-0">&copy; 2025 MyWebsite. All rights reserved.</p>
            <div>
                <a href="#" class="text-white me-3">Privacy Policy</a>
                <a href="#" class="text-white me-3">Terms of Service</a>
                <a href="#" class="text-white">Contact</a>
            </div>
        </div>
    </footer>
</form>

    
</body>
</html>
