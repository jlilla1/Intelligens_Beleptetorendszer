// While this code is running a classifier is created from the captured dataset (the data was captured in the previous form)

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

namespace UserInterface
{
    public partial class TrainingDataset : Form
    {

        // Using a string from the previous form
        // Witth this we do not need to ask for the "username" again
        string neptun = AddNewFaceToSystem.SetValueForText1;

        public TrainingDataset()
        {
            InitializeComponent();
        }

        /*
         After creating the dataset in the form before now we start creating the classifiers
         We train the dataset with a python code I found on GitHub: https://github.com/joeVenner/FaceRecognition-GUI-APP
         I created 3 python files to call the functions given, also made some modifications in the code
         */
        private void TrainingDatadet_Load(object sender, EventArgs e)
        {
            // Calling the python file created by me
            // It requires an input parameter
            Process proc = new Process();
            proc.StartInfo.FileName = @"C:\Program Files\Python311\python.exe";
            proc.StartInfo.UseShellExecute = false;
            proc.StartInfo.Arguments = @"TrainDatasetPy.py " + neptun;
            proc.StartInfo.WorkingDirectory = @"D:\Lilla\Aktualis felev\Szakdolgozati_konzultacio_II\FaceRec";
            proc.StartInfo.RedirectStandardOutput = true;
            proc.StartInfo.CreateNoWindow = true;
            proc.Start();

            MessageBox.Show("Model trained successfully. Please get back to Home Page.");
        }

        // This button takes you back to the home page
        private void homeButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            Form1 form = new Form1();
            form.Show();
        }

        // If we close this window we are getting back to the dashboard where we started
        private void TrainingDatadet_FormClosing(object sender, FormClosingEventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }
    }
}
