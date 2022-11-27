// This form is a dashboard. All the other forms are opened from here.
// We can qiut the from this page.

using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace UserInterface
{
    public partial class Dashboard : Form
    {

        public Dashboard()
        {
            InitializeComponent();
        }

        // Adding a person to an organization
        private void addPersonToOrga_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddPersonToOrga form = new AddPersonToOrga();
            form.Show();
        }

        // Adding an organization to the database
        private void addOrganization_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddOrganization form = new AddOrganization();
            form.Show();
        }

        // We would like to add a person to the databe. First we need to select the "type" of the person.
        // Type means "Hallgató" (student) or "Oktató" (instructor)
        private void addPerson_Click(object sender, EventArgs e)
        {
            this.Hide();
            SelectPersonTypeToAdd form = new SelectPersonTypeToAdd();
            form.Show();
        }

        // Adding an organization's contacts to the database
        private void addOrgaContacts_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddOrgaContacts form = new AddOrgaContacts();
            form.Show();
        }

        // Adding a person's contacts to the database. The "type" of the person can be selected in the next form
        private void addPersonContact_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddPersonContacts form = new AddPersonContacts();
            form.Show();
        }

        // Adding a guest to the database. It is still under development...
        private void addGuestDummy_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Under development");
        }

        // Adding a new face to the face recognition system
        private void addNewFaceButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddNewFaceToSystem form = new AddNewFaceToSystem();
            form.Show();
        }

        // Starting the face recognition process
        private void startFaceRecButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            FaceIdentification form = new FaceIdentification();
            form.Show();
        }

        // In case of closing the dashboard...
        private void Dashboard_FormClosing(object sender, FormClosingEventArgs e)
        {
            //A messagebox shows in case someone just pressed the "x" accidentally
            DialogResult dialog = MessageBox.Show("Biztos ki szeretne lépni az alkalmazásból?",
                "Kilépés", MessageBoxButtons.YesNo);

            if (dialog == DialogResult.No)
            {
                e.Cancel = true;
            }
        }
    }
}
