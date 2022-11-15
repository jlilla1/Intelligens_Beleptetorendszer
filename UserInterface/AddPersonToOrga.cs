// With this form we can add a person to an organization in our database

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
    public partial class AddPersonToOrga : Form
    {
        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
            ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();


        public AddPersonToOrga()
        {
            InitializeComponent();
        }

        private void saveButton_Click(object sender, EventArgs e)
        {
            // First we check the combobox
            // If "Hallgató" (=student) is chosen we add a student
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
                    cmd.CommandText = "add_student_to_organization";
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Giving the arguments for the stored procedure from the textboxes
                    cmd.Parameters.AddWithValue("@neptun", textBox1.Text);
                    cmd.Parameters["@neptun"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@o_name", textBox2.Text);
                    cmd.Parameters["@o_name"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();

                }
                // In case something goes wrong a message will be seen in the console
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Console.WriteLine("Some error has occurred");
                }
                conn.Close();

                // After adding a person to an organization in the database we get back to the home page (here we can quit the application)
                this.Hide();
                Form1 form = new Form1();
                form.Show();
            }

            // If "Oktató" (=teacher/instructor) is chosen we add a instructor
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
                    cmd.CommandText = "add_instructor_to_organization";
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Giving the arguments for the stored procedure from the textboxes
                    cmd.Parameters.AddWithValue("@neptun", textBox1.Text);
                    cmd.Parameters["@neptun"].Direction = ParameterDirection.Input;

                    cmd.Parameters.AddWithValue("@o_name", textBox2.Text);
                    cmd.Parameters["@o_name"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();

                }
                // In case something goes wrong a message will be seen in the console
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Console.WriteLine("Some error has occurred");
                }
                conn.Close();

                // After adding a person to an organization in the database we get back to the home page (here we can quit the application)
                this.Hide();
                Form1 form = new Form1();
                form.Show();
            }
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddPersonToOrga_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }
    }
}
