namespace UserInterface
{
    partial class Dashboard
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Dashboard));
            this.addPerson = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.addPersonContact = new System.Windows.Forms.Button();
            this.addOrganization = new System.Windows.Forms.Button();
            this.addPersonToOrga = new System.Windows.Forms.Button();
            this.addOrgaContacts = new System.Windows.Forms.Button();
            this.addGuestDummy = new System.Windows.Forms.Button();
            this.startFaceRecButton = new System.Windows.Forms.Button();
            this.addNewFaceButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // addPerson
            // 
            this.addPerson.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addPerson.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addPerson.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addPerson.ForeColor = System.Drawing.SystemColors.Window;
            this.addPerson.Location = new System.Drawing.Point(12, 127);
            this.addPerson.Name = "addPerson";
            this.addPerson.Size = new System.Drawing.Size(283, 67);
            this.addPerson.TabIndex = 17;
            this.addPerson.Text = "Személy hozzáadása";
            this.addPerson.UseVisualStyleBackColor = false;
            this.addPerson.Click += new System.EventHandler(this.addPerson_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(41)))), ((int)(((byte)(67)))));
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(-3, -1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(531, 49);
            this.panel1.TabIndex = 16;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(41)))), ((int)(((byte)(67)))));
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.ForeColor = System.Drawing.SystemColors.Window;
            this.label1.Location = new System.Drawing.Point(196, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(141, 29);
            this.label1.TabIndex = 10;
            this.label1.Text = "Irányítópult";
            // 
            // addPersonContact
            // 
            this.addPersonContact.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addPersonContact.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addPersonContact.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addPersonContact.ForeColor = System.Drawing.SystemColors.Window;
            this.addPersonContact.Location = new System.Drawing.Point(301, 127);
            this.addPersonContact.Name = "addPersonContact";
            this.addPersonContact.Size = new System.Drawing.Size(211, 67);
            this.addPersonContact.TabIndex = 18;
            this.addPersonContact.Text = "Elérhetőségek megadása";
            this.addPersonContact.UseVisualStyleBackColor = false;
            this.addPersonContact.Click += new System.EventHandler(this.addPersonContact_Click);
            // 
            // addOrganization
            // 
            this.addOrganization.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addOrganization.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addOrganization.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addOrganization.ForeColor = System.Drawing.SystemColors.Window;
            this.addOrganization.Location = new System.Drawing.Point(12, 200);
            this.addOrganization.Name = "addOrganization";
            this.addOrganization.Size = new System.Drawing.Size(283, 65);
            this.addOrganization.TabIndex = 19;
            this.addOrganization.Text = "Szervezet hozzáadása";
            this.addOrganization.UseVisualStyleBackColor = false;
            this.addOrganization.Click += new System.EventHandler(this.addOrganization_Click);
            // 
            // addPersonToOrga
            // 
            this.addPersonToOrga.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addPersonToOrga.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addPersonToOrga.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addPersonToOrga.ForeColor = System.Drawing.SystemColors.Window;
            this.addPersonToOrga.Location = new System.Drawing.Point(12, 286);
            this.addPersonToOrga.Name = "addPersonToOrga";
            this.addPersonToOrga.Size = new System.Drawing.Size(283, 67);
            this.addPersonToOrga.TabIndex = 20;
            this.addPersonToOrga.Text = "Személy szervezethez rendelése";
            this.addPersonToOrga.UseVisualStyleBackColor = false;
            this.addPersonToOrga.Click += new System.EventHandler(this.addPersonToOrga_Click);
            // 
            // addOrgaContacts
            // 
            this.addOrgaContacts.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addOrgaContacts.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addOrgaContacts.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addOrgaContacts.ForeColor = System.Drawing.SystemColors.Window;
            this.addOrgaContacts.Location = new System.Drawing.Point(301, 200);
            this.addOrgaContacts.Name = "addOrgaContacts";
            this.addOrgaContacts.Size = new System.Drawing.Size(211, 67);
            this.addOrgaContacts.TabIndex = 21;
            this.addOrgaContacts.Text = "Elérhetőségek megadása";
            this.addOrgaContacts.UseVisualStyleBackColor = false;
            this.addOrgaContacts.Click += new System.EventHandler(this.addOrgaContacts_Click);
            // 
            // addGuestDummy
            // 
            this.addGuestDummy.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addGuestDummy.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addGuestDummy.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addGuestDummy.ForeColor = System.Drawing.SystemColors.Window;
            this.addGuestDummy.Location = new System.Drawing.Point(301, 286);
            this.addGuestDummy.Name = "addGuestDummy";
            this.addGuestDummy.Size = new System.Drawing.Size(211, 67);
            this.addGuestDummy.TabIndex = 22;
            this.addGuestDummy.Text = "Vendég hozzáadása";
            this.addGuestDummy.UseVisualStyleBackColor = false;
            this.addGuestDummy.Click += new System.EventHandler(this.addGuestDummy_Click);
            // 
            // startFaceRecButton
            // 
            this.startFaceRecButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.startFaceRecButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.startFaceRecButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.startFaceRecButton.ForeColor = System.Drawing.SystemColors.Window;
            this.startFaceRecButton.Location = new System.Drawing.Point(301, 443);
            this.startFaceRecButton.Name = "startFaceRecButton";
            this.startFaceRecButton.Size = new System.Drawing.Size(211, 67);
            this.startFaceRecButton.TabIndex = 24;
            this.startFaceRecButton.Text = "Arcfelismerés indítása";
            this.startFaceRecButton.UseVisualStyleBackColor = false;
            this.startFaceRecButton.Click += new System.EventHandler(this.startFaceRecButton_Click);
            // 
            // addNewFaceButton
            // 
            this.addNewFaceButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(102)))), ((int)(((byte)(164)))));
            this.addNewFaceButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.addNewFaceButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.addNewFaceButton.ForeColor = System.Drawing.SystemColors.Window;
            this.addNewFaceButton.Location = new System.Drawing.Point(12, 443);
            this.addNewFaceButton.Name = "addNewFaceButton";
            this.addNewFaceButton.Size = new System.Drawing.Size(283, 67);
            this.addNewFaceButton.TabIndex = 23;
            this.addNewFaceButton.Text = "Új személy felvétele az adatbázisba";
            this.addNewFaceButton.UseVisualStyleBackColor = false;
            this.addNewFaceButton.Click += new System.EventHandler(this.addNewFaceButton_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(41)))), ((int)(((byte)(67)))));
            this.label2.Location = new System.Drawing.Point(168, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(184, 29);
            this.label2.TabIndex = 25;
            this.label2.Text = "Adatok felvétele";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(36)))), ((int)(((byte)(41)))), ((int)(((byte)(67)))));
            this.label3.Location = new System.Drawing.Point(126, 382);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(263, 29);
            this.label3.TabIndex = 26;
            this.label3.Text = "Arcfelismerés kezelése";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(524, 528);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.startFaceRecButton);
            this.Controls.Add(this.addNewFaceButton);
            this.Controls.Add(this.addGuestDummy);
            this.Controls.Add(this.addOrgaContacts);
            this.Controls.Add(this.addPersonToOrga);
            this.Controls.Add(this.addOrganization);
            this.Controls.Add(this.addPersonContact);
            this.Controls.Add(this.addPerson);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Irányítópult";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Dashboard_FormClosing);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button addPerson;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button addPersonContact;
        private System.Windows.Forms.Button addOrganization;
        private System.Windows.Forms.Button addPersonToOrga;
        private System.Windows.Forms.Button addOrgaContacts;
        private System.Windows.Forms.Button addGuestDummy;
        private System.Windows.Forms.Button startFaceRecButton;
        private System.Windows.Forms.Button addNewFaceButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}

