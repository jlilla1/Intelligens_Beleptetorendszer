// With this form we can select a the type of the person we would like to add to our database
// The options are: student or instructor

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
    public partial class SelectPersonTypeToAdd : Form
    {

        public SelectPersonTypeToAdd()
        {
            InitializeComponent();
        }

        // In this form we need to decide if we would like to add a student or an instructor with a bombobox
        // The reason for this step is that the database needs different data for adding a student and an instructor
        private void nextButton_Click(object sender, EventArgs e)
        {
            // If we choose "Hallgató" = student than it will open the form where we can add a student
            if (comboBox1.Text == "Hallgató")
            {
                this.Hide();
                AddStudent form = new AddStudent();
                form.Show();

            }
            // If we choose "Oktató" = teacher/instructor than it will open the form where we can add an instructor
            else if (comboBox1.Text == "Oktató")
            {
                this.Hide();
                AddInstructor form = new AddInstructor();
                form.Show();

            }
        }

        // This button brings you back to the previous page (in this case the main menu)
        private void backButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Dashboard form = new Dashboard();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void SelectPersonTypeToAdd_FormClosing(object sender, FormClosingEventArgs e)
        {
            Dashboard form = new Dashboard();
            form.Show();
        }
    }
}
