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
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }

        private void addPersonToOrga_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddPersonToOrga form = new AddPersonToOrga();
            form.Show();
        }

        private void addOrganization_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddOrganization form = new AddOrganization();
            form.Show();
        }

        private void addPerson_Click(object sender, EventArgs e)
        {
            this.Hide();
            SelectPersonTypeToAdd form = new SelectPersonTypeToAdd();
            form.Show();
        }

        private void addOrgaContacts_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddOrgaContacts form = new AddOrgaContacts();
            form.Show();
        }

        private void addPersonContact_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddPersonContacts form = new AddPersonContacts();
            form.Show();
        }

        private void addGuestDummy_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Under development");
        }

        private void addNewFaceButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddNewFaceToSystem form = new AddNewFaceToSystem();
            form.Show();
        }

        private void startFaceRecButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            FaceIdentification form = new FaceIdentification();
            form.Show();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
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
