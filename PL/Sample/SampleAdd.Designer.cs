﻿namespace PL
{
    partial class SampleAdd
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
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges1 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges2 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges7 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges8 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges3 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges4 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges5 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges6 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            guna2Panel1 = new Guna.UI2.WinForms.Guna2Panel();
            guna2HtmlLabel1 = new Guna.UI2.WinForms.Guna2HtmlLabel();
            guna2Panel2 = new Guna.UI2.WinForms.Guna2Panel();
            btn_Close = new Guna.UI2.WinForms.Guna2Button();
            btn_Save = new Guna.UI2.WinForms.Guna2Button();
            guna2Panel1.SuspendLayout();
            guna2Panel2.SuspendLayout();
            SuspendLayout();
            // 
            // guna2Panel1
            // 
            guna2Panel1.Controls.Add(guna2HtmlLabel1);
            guna2Panel1.CustomizableEdges = customizableEdges1;
            guna2Panel1.Dock = DockStyle.Top;
            guna2Panel1.FillColor = Color.FromArgb(95, 71, 204);
            guna2Panel1.ForeColor = SystemColors.ControlText;
            guna2Panel1.Location = new Point(0, 0);
            guna2Panel1.Name = "guna2Panel1";
            guna2Panel1.ShadowDecoration.CustomizableEdges = customizableEdges2;
            guna2Panel1.Size = new Size(945, 127);
            guna2Panel1.TabIndex = 0;
            // 
            // guna2HtmlLabel1
            // 
            guna2HtmlLabel1.BackColor = Color.Transparent;
            guna2HtmlLabel1.Font = new Font("Segoe UI", 14F);
            guna2HtmlLabel1.ForeColor = SystemColors.ButtonHighlight;
            guna2HtmlLabel1.Location = new Point(35, 36);
            guna2HtmlLabel1.Name = "guna2HtmlLabel1";
            guna2HtmlLabel1.Size = new Size(159, 33);
            guna2HtmlLabel1.TabIndex = 0;
            guna2HtmlLabel1.Text = "Sample Header";
            // 
            // guna2Panel2
            // 
            guna2Panel2.Controls.Add(btn_Close);
            guna2Panel2.Controls.Add(btn_Save);
            guna2Panel2.CustomizableEdges = customizableEdges7;
            guna2Panel2.Dock = DockStyle.Bottom;
            guna2Panel2.FillColor = Color.Gainsboro;
            guna2Panel2.Location = new Point(0, 449);
            guna2Panel2.Name = "guna2Panel2";
            guna2Panel2.ShadowDecoration.CustomizableEdges = customizableEdges8;
            guna2Panel2.Size = new Size(945, 122);
            guna2Panel2.TabIndex = 1;
            // 
            // btn_Close
            // 
            btn_Close.Animated = true;
            btn_Close.AutoRoundedCorners = true;
            btn_Close.BackColor = Color.Gainsboro;
            btn_Close.BorderRadius = 26;
            btn_Close.CustomizableEdges = customizableEdges3;
            btn_Close.DisabledState.BorderColor = Color.DarkGray;
            btn_Close.DisabledState.CustomBorderColor = Color.DarkGray;
            btn_Close.DisabledState.FillColor = Color.FromArgb(169, 169, 169);
            btn_Close.DisabledState.ForeColor = Color.FromArgb(141, 141, 141);
            btn_Close.FillColor = Color.Firebrick;
            btn_Close.Font = new Font("Segoe UI", 9F);
            btn_Close.ForeColor = Color.White;
            btn_Close.Location = new Point(248, 29);
            btn_Close.Name = "btn_Close";
            btn_Close.ShadowDecoration.CustomizableEdges = customizableEdges4;
            btn_Close.Size = new Size(172, 54);
            btn_Close.TabIndex = 1;
            btn_Close.Text = "Close";
            btn_Close.Click += btn_Close_Click;
            // 
            // btn_Save
            // 
            btn_Save.Animated = true;
            btn_Save.AutoRoundedCorners = true;
            btn_Save.BackColor = Color.Gainsboro;
            btn_Save.BorderRadius = 26;
            btn_Save.CustomizableEdges = customizableEdges5;
            btn_Save.DisabledState.BorderColor = Color.DarkGray;
            btn_Save.DisabledState.CustomBorderColor = Color.DarkGray;
            btn_Save.DisabledState.FillColor = Color.FromArgb(169, 169, 169);
            btn_Save.DisabledState.ForeColor = Color.FromArgb(141, 141, 141);
            btn_Save.FillColor = Color.FromArgb(95, 71, 204);
            btn_Save.Font = new Font("Segoe UI", 9F);
            btn_Save.ForeColor = Color.White;
            btn_Save.Location = new Point(45, 29);
            btn_Save.Name = "btn_Save";
            btn_Save.ShadowDecoration.CustomizableEdges = customizableEdges6;
            btn_Save.Size = new Size(172, 54);
            btn_Save.TabIndex = 0;
            btn_Save.Text = "Save";
            btn_Save.Click += btn_Save_Click;
            // 
            // SampleAdd
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(945, 571);
            Controls.Add(guna2Panel2);
            Controls.Add(guna2Panel1);
            Name = "SampleAdd";
            Text = "SampleAdd";
            Load += SampleAdd_Load;
            guna2Panel1.ResumeLayout(false);
            guna2Panel1.PerformLayout();
            guna2Panel2.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        public Guna.UI2.WinForms.Guna2Panel guna2Panel1;
        public Guna.UI2.WinForms.Guna2HtmlLabel guna2HtmlLabel1;
        public Guna.UI2.WinForms.Guna2Button btn_Close;
        public Guna.UI2.WinForms.Guna2Button btn_Save;
        public Guna.UI2.WinForms.Guna2Panel guna2Panel2;
    }
}