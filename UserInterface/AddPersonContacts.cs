// With this form we can add a person's (student or instructor - can be selected in the previous form) contacts to our database

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
    public partial class AddPersonContacts : Form
    {
        // The full name and the "neptun" code of the person added will be sent to the next form
        // So those text boxes will be filled automatically
        public static AddPersonContacts instance;
        public TextBox neptun, name;

        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
            ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();


        public AddPersonContacts()
        {
            InitializeComponent();
            // This part is also required to pass the data between the two forms
            instance = this;
            neptun = textBox1;
            name = textBox2;

        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddPersonContacts_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }

        // With the "mentés = "save" button we can add a person's contacts
        // For all database functions stored procedures are used. They can be checked in the database
        private void saveButton_Click(object sender, EventArgs e)
        {
            // If you select the "Hallgató" = student option you can add a student to the database
            if (comboBox1.Text == "Hallgató")
            {
                try
                {
                    MySqlCommand cmd = new MySqlCommand();

                    // Opening the connection
                    Console.WriteLine("Connecting to MySQL...");
                    conn.Open();
                    cmd.Connection = conn;
                    
                    // Selecting the stored procedure we are about to use
                    cmd.CommandText = "add_student_contact";
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Giving the arguments for the stored procedure from the textboxes
                    cmd.Parameters.AddWithValue("@neptun", textBox1.Text);
                    cmd.Parameters["@neptun"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@phone", textBox3.Text);
                    cmd.Parameters["@phone"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@email", textBox4.Text);
                    cmd.Parameters["@email"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();

                }
                // In case something goes wrong a message will be seen in the console
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Console.WriteLine("Some error has occurred");
                }
                conn.Close();

                // After adding a person's contacts to the database we get back to the home page (here we can quit the application)
                this.Hide();
                Form1 form = new Form1();
                form.Show();
            }

            // If you select the "Oktató" = instructor option you can add an instructor to the database
            else if (comboBox1.Text == "Oktató")
            {
                try
                {
                    MySqlCommand cmd = new MySqlCommand();

                    // Opening the connection
                    Console.WriteLine("Connecting to MySQL...");
                    conn.Open();
                    cmd.Connection = conn;

                    // Selecting the stored procedure we are about to use
                    cmd.CommandText = "add_instructor_contact";
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Giving the arguments for the stored procedure from the textboxes
                    cmd.Parameters.AddWithValue("@neptun", textBox1.Text);
                    cmd.Parameters["@neptun"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@phone", textBox3.Text);
                    cmd.Parameters["@phone"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@email", textBox4.Text);
                    cmd.Parameters["@email"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();

                }
                // In case something goes wrong a message will be seen in the console
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Console.WriteLine("Some error has occurred");
                }
                conn.Close();

                // After adding a person's contacts to the database we get back to the home page (here we can quit the application)
                this.Hide();
                Form1 form = new Form1();
                form.Show();
            }
        }
    }
}
