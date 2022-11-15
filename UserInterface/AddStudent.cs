// With this form we can add a new student to our database

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
    public partial class AddStudent : Form
    {
        // The full name and the "neptun" code of the person added will be sent to the next form
        // So those text boxes will be filled automatically
        public static AddStudent instance;
        public TextBox tBox1, tBox2;

        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
            ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();


        public AddStudent()
        {
            InitializeComponent();
            // This part is also required to pass the data between the two forms
            instance = this;
            tBox1 = textBox1;
            tBox2 = textBox2;
        }

        // With the "mentés = "save" button we can simply add a person to our database (without contacts)
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
                cmd.CommandText = "add_student";
                cmd.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure from the textboxes
                cmd.Parameters.AddWithValue("@student_id", textBox1.Text);
                cmd.Parameters["@student_id"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@first_name", textBox2.Text);
                cmd.Parameters["@first_name"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@last_name", textBox3.Text);
                cmd.Parameters["@last_name"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@date_of_birth", dateTimePicker1.Text);
                cmd.Parameters["@date_of_birth"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@address", textBox5.Text);
                cmd.Parameters["@address"].Direction = ParameterDirection.Input;

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

        // This button brings you back to the previous page
        private void backButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            SelectPersonTypeToAdd form = new SelectPersonTypeToAdd();
            form.Show();
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddStudent_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }

        /*
        If we would like to type in the person's contacts as well, than we press this button
        Here after adding the person we will not get back to the main menu, a new window will open
        In that window we can also type in the person's contacts
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
                cmd.CommandText = "add_student";
                cmd.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure from the textboxes
                cmd.Parameters.AddWithValue("@student_id", textBox1.Text);
                cmd.Parameters["@student_id"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@first_name", textBox2.Text);
                cmd.Parameters["@first_name"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@last_name", textBox3.Text);
                cmd.Parameters["@last_name"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@date_of_birth", dateTimePicker1.Text);
                cmd.Parameters["@date_of_birth"].Direction = ParameterDirection.Input;

                cmd.Parameters.AddWithValue("@address", textBox5.Text);
                cmd.Parameters["@address"].Direction = ParameterDirection.Input;

                cmd.ExecuteNonQuery();

            }
            // In case something goes wrong a message will be seen in the console
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("Some error has occurred");
            }
            conn.Close();

            // After adding a person to the database we can add the person's contacts as well with the following form
            this.Hide();
            AddPersonContacts form = new AddPersonContacts();
            form.Show();

            // Here we fill the values for the textboxes in the following form so we do not need to type them in twice
            AddPersonContacts.instance.neptun.Text = textBox1.Text;
            AddPersonContacts.instance.name.Text = textBox3.Text + " " + textBox2.Text;

        }
    }
}
