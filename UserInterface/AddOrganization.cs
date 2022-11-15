// With this form we can add a new organization to our database

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
    public partial class AddOrganization : Form
    {
        // The name of the organization added will be sent to the next form
        // So that text box will be filled automatically
        public static AddOrganization instance;
        public TextBox tBox1;

        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
            ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();


        public AddOrganization()
        {
            InitializeComponent();
            // This part is also required to pass the data between the two forms
            instance = this;
            tBox1 = textBox1;

        }

        // With the "mentés = "save" button we can simply add an organization to our database (without contacts)
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
                cmd.CommandText = "add_organization";
                cmd.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure from the textbox
                cmd.Parameters.AddWithValue("@organization_name", textBox1.Text);
                cmd.Parameters["@organization_name"].Direction = ParameterDirection.Input;

                cmd.ExecuteNonQuery();

            }
            // In case something goes wrong a message will be seen in the console
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("Some error has occurred");
            }
            conn.Close();

            // After adding a person to the database we get back to the home page (here we can quit the application)
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        /*
        If we would like to type in the organization's contacts as well, than we press this button
        Here after adding the organization we will not get back to the main menu, a new window will open
        In that window we can also type in the organization's contacts
        */
        private void addContactsButton_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand();

                // Opening the connection
                Console.WriteLine("Connecting to MySQL...");
                conn.Open();
                cmd.Connection = conn;

                // Selecting the stored procedure we are about to use
                cmd.CommandText = "add_organization";
                cmd.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure from the textbox
                cmd.Parameters.AddWithValue("@organization_name", textBox1.Text);
                cmd.Parameters["@organization_name"].Direction = ParameterDirection.Input;

                cmd.ExecuteNonQuery();

            }
            // In case something goes wrong a message will be seen in the console
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("Some error has occurred");
            }
            conn.Close();

            // After adding an organization to the database we can add the organization's contacts as well with the following form
            this.Hide();

            AddOrgaContacts form = new AddOrgaContacts();
            form.Show();

            AddOrgaContacts.instance.name.Text = textBox1.Text;
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddOrganization_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }
    }
}
