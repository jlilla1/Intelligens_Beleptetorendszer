// With this form we can identify a person in our face recognition system

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace UserInterface
{
    public partial class FaceIdentification : Form
    {
        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
           ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();


        public FaceIdentification()
        {
            InitializeComponent();
        }

        private void identificationButton_Click(object sender, EventArgs e)
        {
            // In this case we are working with an access control for a specific organization
            // The organization name can be specified here
            string Organization = "Neumann János Informatikai Szakkollégium";

            // This boolean will tell us if the person is on the list of people who can enter the common room
            // We do not want to collect data from people who are not even allowed to access
            bool PersonOK=true;

            try
            {
                MySqlCommand cmd_students = new MySqlCommand();

                // Opening the connection
                Console.WriteLine("Connecting to MySQL...");
                conn.Open();
                cmd_students.Connection = conn;

                // Selecting the stored procedure we are about to use
                // In this part we check if the person with the neptun code given in the form can even enter the room
                cmd_students.CommandText = "list_students";
                cmd_students.CommandType = CommandType.StoredProcedure;

                // Giving the arguments for the stored procedure
                cmd_students.Parameters.AddWithValue("@orga_name", Organization);
                cmd_students.Parameters["@orga_name"].Direction = ParameterDirection.Input;

                // We read the list of students
                var reader1 = cmd_students.ExecuteReader();

                // While reading we will check if the given neptun code belongs to a student on the list
                // If we found the person we will not search any longer, we will break the process
                while (reader1.Read())
                {
                    if (textBox1.Text == reader1.GetString(0))
                    {
                        PersonOK = true;
                        break;
                    }
                    else
                    {
                        PersonOK = false;
                    }
                }
            }
            // In case something goes wrong a message will be seen in the console
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Console.WriteLine("Some error has occurred");
            }
            conn.Close();

            // If the person in the search was no student who can enter, we will check the instructors as well
            if (PersonOK == false)
            {
                try
                {
                    MySqlCommand cmd_instuctors = new MySqlCommand();

                    // Opening the connection
                    Console.WriteLine("Connecting to MySQL...");
                    conn.Open();
                    cmd_instuctors.Connection = conn;

                    // Selecting the stored procedure we are about to use
                    // In this part we check if the person with the neptun code given in the form can even enter the room
                    cmd_instuctors.CommandText = "list_instuctors";
                    cmd_instuctors.CommandType = CommandType.StoredProcedure;

                    // Giving the arguments for the stored procedure
                    cmd_instuctors.Parameters.AddWithValue("@orga_name", Organization);
                    cmd_instuctors.Parameters["@orga_name"].Direction = ParameterDirection.Input;

                    // We read the list of instructors
                    var reader2 = cmd_instuctors.ExecuteReader();

                    // While reading we will check if the given neptun code belongs to an instructor on the list
                    // If we found the person we will not search any longer, we will break the process
                    while (reader2.Read())
                    {
                        if (textBox1.Text == reader2.GetString(0))
                        {
                            PersonOK = true;
                            break;
                        }
                        else
                        {
                            PersonOK = false;
                        }
                    }

                }
                // In case something goes wrong a message will be seen in the console
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    Console.WriteLine("Some error has occurred");
                }
                conn.Close();
            }

            /*
             If by the end of the pre-check process we found that the person given is on the list who can access the room
             than we start the identification
             For identification I use a python code found on GitHub: https://github.com/joeVenner/FaceRecognition-GUI-APP
             I created 3 python files to call the functions given, also made some modifications in the code
            */
            if (PersonOK == true)
            {

                // Calling the python file created by me
                // It requires an input parameter
                Process proc = new Process();
                proc.StartInfo.FileName = @"C:\Program Files\Python311\python.exe";
                proc.StartInfo.UseShellExecute = false;
                proc.StartInfo.Arguments = @"FaceIdentificationPy.py " + textBox1.Text;
                proc.StartInfo.WorkingDirectory = @"..\..\FaceRec";
                proc.StartInfo.RedirectStandardOutput = true;
                proc.StartInfo.CreateNoWindow = true;
                proc.Start();

            }
            // This message will show if the username given was incorrect
            else
            {
                MessageBox.Show("Invalid Username. This person is not a member of the organization.");
            }
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Dashboard form = new Dashboard();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we startede
        private void FaceIdentification_FormClosing(object sender, FormClosingEventArgs e)
        {
            Dashboard form = new Dashboard();
            form.Show();
        }
    }
}
