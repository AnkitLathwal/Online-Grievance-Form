using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using BCrypt.Net;

public partial class NewAccount : System.Web.UI.Page
{
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        // Get form values from TextBox controls
        string firstName = HttpUtility.HtmlEncode(firstNameTextBox.Text);
        string email = HttpUtility.HtmlEncode(emailTextBox.Text);
        string password = passwordTextBox.Text;
        string confirmPassword = confirmPasswordTextBox.Text;

        // Validate that none of the input fields are null or empty
        if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
        {
            ShowAlert("All fields are required!");
            return;
        }

        // Validate email format
        if (!System.Text.RegularExpressions.Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
        {
            ShowAlert("Invalid email format!");
            return;
        }

        // Check if passwords match
        if (password != confirmPassword)
        {
            ShowAlert("Passwords do not match!");
            return;
        }

        // Enforce password strength
        if (!IsPasswordStrong(password))
        {
            ShowAlert("Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character.");
            return;
        }

        // Hash the password using bcrypt
        string hashedPassword = HashPassword(password);

        // Database connection string
        string connectionString = "data source=localhost\\SQLEXPRESS; database=Client; integrated security=SSPI";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                // Check if email already exists
                if (IsEmailExists(conn, email))
                {
                    ShowAlert("Email already exists!");
                    return;
                }

                // Insert the new user into the database
                string query = "INSERT INTO Details (Name, Email, Password) VALUES (@Name, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar) { Value = firstName });
                    cmd.Parameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar) { Value = email });
                    cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar) { Value = hashedPassword });

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        string script = "alert('Account Created Successfully'); window.location='Default.aspx';";
                        ScriptManager.RegisterStartupScript(this, GetType(), "redirect", script, true);
                    }
                    else
                    {
                        ShowAlert("Failed to create an account. Please try again.");
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error
                System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                ShowAlert("An error occurred while processing your request.");
            }
        }
    }

    // Method to hash the password using bcrypt
    private string HashPassword(string password)
    {
        return BCrypt.Net.BCrypt.HashPassword(password);
    }

    // Method to verify if the email already exists in the database
    private bool IsEmailExists(SqlConnection conn, string email)
    {
        string query = "SELECT COUNT(*) FROM Details WHERE Email = @Email";
        using (SqlCommand cmd = new SqlCommand(query, conn))
        {
            cmd.Parameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar) { Value = email });
            int count = (int)cmd.ExecuteScalar();
            return count > 0;
        }
    }

    // Method to validate password strength
    private bool IsPasswordStrong(string password)
    {
        return password.Length >= 8 &&
               password.Any(char.IsUpper) &&
               password.Any(char.IsLower) &&
               password.Any(char.IsDigit) &&
               password.Any(ch => "!@#$%^&*()_+[]{}|;:'\",.<>?".Contains(ch));
    }


    // Method to show alert messages to the user
    private void ShowAlert(string message)
    {
        // Escape the message to prevent JavaScript injection
        string safeMessage = HttpUtility.JavaScriptStringEncode(message);

        // Use string.Format for constructing the script
        string script = string.Format("<script>alert('{0}');</script>", safeMessage);

        // Inject the script into the response
        Response.Write(script);
    }
}