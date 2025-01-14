using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class NewAccount : System.Web.UI.Page
{
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        // Get form values from TextBox controls
        string firstName = firstNameTextBox.Text;
        string email = emailTextBox.Text;
        string password = passwordTextBox.Text;
        string confirmPassword = confirmPasswordTextBox.Text;
       
        // validate that none of the input fields are null or empty
       if (string.IsNullOrEmpty(firstName) || string.IsNullOrEmpty(email) ||
           string.IsNullOrEmpty(password) )
       {
           Response.Write("<script>alert('all fields are required!');</script>");
           return;
        }

        //// Check if passwords match
        if (password != confirmPassword)
        {
            // Show an error message if passwords don't match
            Response.Write("<script>alert('Passwords do not match!');</script>");
            return;
        }

        // Hash the password using SHA256
        string hashedPassword = HashPassword(password);


        // Set up your database connectionString with database Name
        String connectionString = "data source=localhost\\SQLEXPRESS; database=Client; integrated security=SSPI";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            // SQL query to insert the user data
            string query = "INSERT INTO Details (Name,Email,Password) VALUES (@Name,@Email,@Password)";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                try
                { // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Name", firstName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", hashedPassword); // Store the hashed password


                    // Open the connection and execute the query
                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Response.Write("Success! " + rowsAffected + " row(s) affected.");
                        }
                        else
                        {
                            Response.Write("No rows were affected.");
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log the error message in the console for debugging
                        Response.Write("<script>console.log('" + ex.Message + "');</script>");

                        // Optionally, show an error message to the user
                        Response.Write("An error occurred while executing the query.");
                    }



                    // Show success message

                }
                catch (Exception ex)
                {
                    // Show error message if something goes wrong
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    System.Console.WriteLine(ex.Message);
                }
            }
        }
    }

    // Method to hash the password
    private string HashPassword(string password)
    {
        using (SHA256 sha256Hash = SHA256.Create())
        {
            byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder builder = new StringBuilder();
            foreach (byte b in bytes)
            {
                builder.Append(b.ToString("x2"));
            }
            return builder.ToString();
        }
    }
}
