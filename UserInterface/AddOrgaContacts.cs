// With this form we can add an organization's contacts to our database

using MySql.Data.MySqlClient;
using MySql.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UserInterface
{
    public partial class AddOrgaContacts : Form
    {
        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
           ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();

        // We receive the name of the organizaton from the previous
        // So that text box will be filled automatically
        public static AddOrgaContacts instance;
        public TextBox name;

        public AddOrgaContacts()
        {
            InitializeComponent();
            // This part is also required to pass the data between the two forms
            instance = this;
            name = textBox1;
        }

        // With the "mentés = "save" button we add the contacts of an organization to our database
        // For all database functions stored procedures are used. They can be checked in the database
        private void saveButton_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                // Opening the connection
                Console.WriteLine("Connecting to MySQL...");
                conn.Open();
                cmd.Connection = conn;

                // Selecting the stored procedure we are about to use
                cmd.CommandText = "add_organizations_contact";
                cmd.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure from the textboxes
                cmd.Parameters.AddWithValue("@name", textBox1.Text);
                cmd.Parameters["@name"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@phone", textBox2.Text);
                cmd.Parameters["@phone"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@email", textBox3.Text);
                cmd.Parameters["@email"].Direction = ParameterDirection.Input;

                cmd.ExecuteNonQuery();

            }
            // In case something goes wrong a message will be seen in the console
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("Some error has occurred");
            }
            conn.Close();

            // After adding the contacts of an organization to the database we get back to the home page (here we can quit the application)
            this.Hide();
            Dashboard form = new Dashboard();
            form.Show();
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Dashboard form = new Dashboard();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddOrgaContacts_FormClosing(object sender, FormClosingEventArgs e)
        {
            Dashboard form = new Dashboard();
            form.Show();
        }
    }
}
