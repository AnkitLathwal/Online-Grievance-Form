<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="/css/default.css" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

</head>
<body>
    <div class="container mt-5 w-50" >
   <h2  style="text-align:center;color:darkblue; font-size:50px" class=" mb-4 ">Online Grievance Form</h2>
        <form asp-action="Submit"   method="post">
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
                    <input asp-for="Name" class="form-control" placeholder="Enter Here" required="required">
                </div>
            </div>
            <!-- Row 2 -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label asp-for="StakeHolderType" class="form-label">Stake Holder Type<span class="text-danger">*</span></label>
                    <select asp-for="StakeHolderType" class="form-select" required="required">
                        <option value="" selected="selected">----Select----</option>
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
                <label asp-for="Email" class="form-label">Email Address</label>
                <input asp-for="Email" type="email" class="form-control" placeholder="Enter Here"/>
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
                <button type="submit" class="btn btn-primary ">Submit</button>
            </div>
        </form>
    </div>
    
</body>
</html>
