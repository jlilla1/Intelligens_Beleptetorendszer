// With this form we can add a new person to our face recognition system

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace UserInterface
{
    public partial class AddNewFaceToSystem : Form
    {
        // Connection string for our database. I have my database on my local machine
        private MySqlConnection conn = new MySqlConnection
           ("Server = localhost; Uid = root; Password = 0000; Database = access_control_system_demo; Port = 3306");
        MySqlCommand cmd = new MySqlCommand();

        // Creating a string to use it later for passing data between forms
        public static string SetValueForText1 = "";


        public AddNewFaceToSystem()
        {
            InitializeComponent();

        }

        private void nextButton_Click(object sender, EventArgs e)
        {
            // Setting the data to pass it to the next form
            // It will be used as the input for the next process
            SetValueForText1 = textBox1.Text;

            // In this case we are working with an access control for a specific organization
            // The organization name can be specified here
            string Organization = "Neumann János Informatikai Szakkollégium";

            // This boolean will tell us if the person is on the list of people who can enter the common room
            // We do not want to collect data from people who are not even allowed to access
            bool PersonOK = true;

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
             than we start capturing the data for them
             We capture data with a python code I found on GitHub: https://github.com/joeVenner/FaceRecognition-GUI-APP
             I created 3 python files to call the functions given, also made some modifications in the code
            */
            if (PersonOK == true)
            {
                // Calling the python file created by me
                // It requires an input parameter
                Process proc = new Process();
                proc.StartInfo.FileName = @"C:\Program Files\Python311\python.exe";
                proc.StartInfo.UseShellExecute = false;
                proc.StartInfo.Arguments = @"CreateDatasetPy.py " + textBox1.Text;
                proc.StartInfo.WorkingDirectory = @"D:\Lilla\Aktualis felev\Szakdolgozati_konzultacio_II\FaceRec";
                proc.StartInfo.RedirectStandardOutput = true;
                proc.StartInfo.CreateNoWindow = true;
                proc.Start();
                
                // In case we want to, we can add this messagebox to the system
                // MessageBox.Show("Data captured successfully");

                // After creating the photos we will jump to training the modell
                this.Hide();
                TrainingDataset form = new TrainingDataset();
                form.Show();

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
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void AddNewFaceToSystem_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }
    }
}
