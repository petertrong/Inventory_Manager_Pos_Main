﻿namespace PL.View
{
    partial class UserView
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
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges3 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges4 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges5 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges1 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(UserView));
            Guna.UI2.WinForms.Suite.CustomizableEdges customizableEdges2 = new Guna.UI2.WinForms.Suite.CustomizableEdges();
            DataGridViewCellStyle dataGridViewCellStyle1 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle3 = new DataGridViewCellStyle();
            guna2HtmlLabel3 = new Guna.UI2.WinForms.Guna2HtmlLabel();
            guna2PictureBox1 = new Guna.UI2.WinForms.Guna2PictureBox();
            guna2DataGridView1 = new Guna.UI2.WinForms.Guna2DataGridView();
            dgvSr = new DataGridViewTextBoxColumn();
            dgvid = new DataGridViewTextBoxColumn();
            dgvName = new DataGridViewTextBoxColumn();
            dgvUserName = new DataGridViewTextBoxColumn();
            dgvPass = new DataGridViewTextBoxColumn();
            dgvPhone = new DataGridViewTextBoxColumn();
            dgvRole = new DataGridViewTextBoxColumn();
            dgvPicture = new DataGridViewImageColumn();
            dgvEdit = new DataGridViewImageColumn();
            dgvDel = new DataGridViewImageColumn();
            dgvPictureTemp = new DataGridViewTextBoxColumn();
            guna2Panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)guna2PictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)guna2DataGridView1).BeginInit();
            SuspendLayout();
            // 
            // guna2Panel1
            // 
            guna2Panel1.Controls.Add(guna2PictureBox1);
            guna2Panel1.Controls.Add(guna2HtmlLabel3);
            guna2Panel1.Margin = new Padding(5);
            guna2Panel1.ShadowDecoration.CustomizableEdges = customizableEdges3;
            guna2Panel1.Size = new Size(1314, 260);
            guna2Panel1.Paint += guna2Panel1_Paint_1;
            guna2Panel1.Controls.SetChildIndex(guna2HtmlLabel1, 0);
            guna2Panel1.Controls.SetChildIndex(guna2HtmlLabel2, 0);
            guna2Panel1.Controls.SetChildIndex(btnAdd1, 0);
            guna2Panel1.Controls.SetChildIndex(txtsearch, 0);
            guna2Panel1.Controls.SetChildIndex(guna2HtmlLabel3, 0);
            guna2Panel1.Controls.SetChildIndex(guna2PictureBox1, 0);
            // 
            // btnAdd1
            // 
            btnAdd1.DialogResult = DialogResult.None;
            btnAdd1.DisabledState.BorderColor = Color.DarkGray;
            btnAdd1.DisabledState.CustomBorderColor = Color.DarkGray;
            btnAdd1.DisabledState.FillColor = Color.FromArgb(169, 169, 169);
            btnAdd1.DisabledState.ForeColor = Color.FromArgb(141, 141, 141);
            btnAdd1.Font = new Font("Segoe UI Semibold", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnAdd1.Location = new Point(79, 154);
            btnAdd1.Margin = new Padding(5);
            btnAdd1.ShadowDecoration.CustomizableEdges = customizableEdges4;
            btnAdd1.Text = "Thêm Mới ";
            btnAdd1.Click += btnAdd1_Click_2;
            // 
            // txtsearch
            // 
            txtsearch.BorderRadius = 39;
            txtsearch.DisabledState.BorderColor = Color.FromArgb(208, 208, 208);
            txtsearch.DisabledState.FillColor = Color.FromArgb(226, 226, 226);
            txtsearch.DisabledState.ForeColor = Color.FromArgb(138, 138, 138);
            txtsearch.DisabledState.PlaceholderForeColor = Color.FromArgb(138, 138, 138);
            txtsearch.FocusedState.BorderColor = Color.FromArgb(94, 148, 255);
            txtsearch.HoverState.BorderColor = Color.FromArgb(94, 148, 255);
            txtsearch.Location = new Point(722, 154);
            txtsearch.Margin = new Padding(5, 6, 5, 6);
            txtsearch.PlaceholderText = "Nhập Vào Tìm Kiếm";
            txtsearch.ShadowDecoration.CustomizableEdges = customizableEdges5;
            txtsearch.Size = new Size(520, 80);
            // 
            // guna2HtmlLabel1
            // 
            guna2HtmlLabel1.Font = new Font("Segoe UI", 22.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            guna2HtmlLabel1.Location = new Point(188, 26);
            guna2HtmlLabel1.Margin = new Padding(6);
            guna2HtmlLabel1.Size = new Size(220, 62);
            guna2HtmlLabel1.Text = "Danh Sách";
            // 
            // guna2HtmlLabel2
            // 
            guna2HtmlLabel2.Location = new Point(722, 105);
            guna2HtmlLabel2.Margin = new Padding(2);
            guna2HtmlLabel2.Size = new Size(128, 40);
            guna2HtmlLabel2.Text = "Tìm Kiếm ";
            // 
            // guna2HtmlLabel3
            // 
            guna2HtmlLabel3.BackColor = Color.Transparent;
            guna2HtmlLabel3.Font = new Font("Segoe UI", 22.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            guna2HtmlLabel3.Location = new Point(188, 79);
            guna2HtmlLabel3.Margin = new Padding(4);
            guna2HtmlLabel3.Name = "guna2HtmlLabel3";
            guna2HtmlLabel3.Size = new Size(260, 62);
            guna2HtmlLabel3.TabIndex = 7;
            guna2HtmlLabel3.Text = "Người Dùng ";
            // 
            // guna2PictureBox1
            // 
            guna2PictureBox1.BackColor = Color.Transparent;
            guna2PictureBox1.CustomizableEdges = customizableEdges1;
            guna2PictureBox1.Image = (Image)resources.GetObject("guna2PictureBox1.Image");
            guna2PictureBox1.ImageRotate = 0F;
            guna2PictureBox1.Location = new Point(75, 26);
            guna2PictureBox1.Margin = new Padding(4);
            guna2PictureBox1.Name = "guna2PictureBox1";
            guna2PictureBox1.ShadowDecoration.CustomizableEdges = customizableEdges2;
            guna2PictureBox1.Size = new Size(120, 118);
            guna2PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            guna2PictureBox1.TabIndex = 8;
            guna2PictureBox1.TabStop = false;
            guna2PictureBox1.UseTransparentBackground = true;
            // 
            // guna2DataGridView1
            // 
            guna2DataGridView1.AllowUserToAddRows = false;
            guna2DataGridView1.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = Color.White;
            guna2DataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            guna2DataGridView1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = Color.FromArgb(96, 71, 204);
            dataGridViewCellStyle2.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle2.ForeColor = Color.White;
            dataGridViewCellStyle2.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = DataGridViewTriState.True;
            guna2DataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            guna2DataGridView1.ColumnHeadersHeight = 35;
            guna2DataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            guna2DataGridView1.Columns.AddRange(new DataGridViewColumn[] { dgvSr, dgvid, dgvName, dgvUserName, dgvPass, dgvPhone, dgvRole, dgvPicture, dgvEdit, dgvDel, dgvPictureTemp });
            dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = Color.White;
            dataGridViewCellStyle3.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle3.ForeColor = Color.FromArgb(71, 69, 94);
            dataGridViewCellStyle3.SelectionBackColor = Color.FromArgb(231, 229, 255);
            dataGridViewCellStyle3.SelectionForeColor = Color.FromArgb(71, 69, 94);
            dataGridViewCellStyle3.WrapMode = DataGridViewTriState.False;
            guna2DataGridView1.DefaultCellStyle = dataGridViewCellStyle3;
            guna2DataGridView1.GridColor = Color.FromArgb(231, 229, 255);
            guna2DataGridView1.Location = new Point(78, 270);
            guna2DataGridView1.Margin = new Padding(5);
            guna2DataGridView1.Name = "guna2DataGridView1";
            guna2DataGridView1.ReadOnly = true;
            guna2DataGridView1.RowHeadersVisible = false;
            guna2DataGridView1.RowHeadersWidth = 51;
            guna2DataGridView1.RowTemplate.Height = 35;
            guna2DataGridView1.Size = new Size(1164, 491);
            guna2DataGridView1.TabIndex = 2;
            guna2DataGridView1.ThemeStyle.AlternatingRowsStyle.BackColor = Color.White;
            guna2DataGridView1.ThemeStyle.AlternatingRowsStyle.Font = null;
            guna2DataGridView1.ThemeStyle.AlternatingRowsStyle.ForeColor = Color.Empty;
            guna2DataGridView1.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = Color.Empty;
            guna2DataGridView1.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = Color.Empty;
            guna2DataGridView1.ThemeStyle.BackColor = Color.White;
            guna2DataGridView1.ThemeStyle.GridColor = Color.FromArgb(231, 229, 255);
            guna2DataGridView1.ThemeStyle.HeaderStyle.BackColor = Color.FromArgb(100, 88, 255);
            guna2DataGridView1.ThemeStyle.HeaderStyle.BorderStyle = DataGridViewHeaderBorderStyle.None;
            guna2DataGridView1.ThemeStyle.HeaderStyle.Font = new Font("Segoe UI", 9F);
            guna2DataGridView1.ThemeStyle.HeaderStyle.ForeColor = Color.White;
            guna2DataGridView1.ThemeStyle.HeaderStyle.HeaightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            guna2DataGridView1.ThemeStyle.HeaderStyle.Height = 35;
            guna2DataGridView1.ThemeStyle.ReadOnly = true;
            guna2DataGridView1.ThemeStyle.RowsStyle.BackColor = Color.White;
            guna2DataGridView1.ThemeStyle.RowsStyle.BorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            guna2DataGridView1.ThemeStyle.RowsStyle.Font = new Font("Segoe UI", 9F);
            guna2DataGridView1.ThemeStyle.RowsStyle.ForeColor = Color.FromArgb(71, 69, 94);
            guna2DataGridView1.ThemeStyle.RowsStyle.Height = 35;
            guna2DataGridView1.ThemeStyle.RowsStyle.SelectionBackColor = Color.FromArgb(231, 229, 255);
            guna2DataGridView1.ThemeStyle.RowsStyle.SelectionForeColor = Color.FromArgb(71, 69, 94);
            guna2DataGridView1.CellContentClick += guna2DataGridView1_CellContentClick_1;
            // 
            // dgvSr
            // 
            dgvSr.AutoSizeMode = DataGridViewAutoSizeColumnMode.None;
            dgvSr.FillWeight = 70F;
            dgvSr.HeaderText = "Sr#";
            dgvSr.MinimumWidth = 70;
            dgvSr.Name = "dgvSr";
            dgvSr.ReadOnly = true;
            dgvSr.SortMode = DataGridViewColumnSortMode.NotSortable;
            dgvSr.Width = 70;
            // 
            // dgvid
            // 
            dgvid.HeaderText = "id";
            dgvid.MinimumWidth = 6;
            dgvid.Name = "dgvid";
            dgvid.ReadOnly = true;
            dgvid.SortMode = DataGridViewColumnSortMode.NotSortable;
            dgvid.Visible = false;
            // 
            // dgvName
            // 
            dgvName.HeaderText = "Tên Người Dùng ";
            dgvName.MinimumWidth = 6;
            dgvName.Name = "dgvName";
            dgvName.ReadOnly = true;
            dgvName.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // dgvUserName
            // 
            dgvUserName.HeaderText = "Tên tài khoản";
            dgvUserName.MinimumWidth = 6;
            dgvUserName.Name = "dgvUserName";
            dgvUserName.ReadOnly = true;
            dgvUserName.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // dgvPass
            // 
            dgvPass.HeaderText = "Mật Khẩu ";
            dgvPass.MinimumWidth = 6;
            dgvPass.Name = "dgvPass";
            dgvPass.ReadOnly = true;
            dgvPass.SortMode = DataGridViewColumnSortMode.NotSortable;
            dgvPass.Visible = false;
            // 
            // dgvPhone
            // 
            dgvPhone.HeaderText = "Số Điện Thoại";
            dgvPhone.MinimumWidth = 6;
            dgvPhone.Name = "dgvPhone";
            dgvPhone.ReadOnly = true;
            dgvPhone.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // dgvRole
            // 
            dgvRole.HeaderText = "Vai trò";
            dgvRole.MinimumWidth = 8;
            dgvRole.Name = "dgvRole";
            dgvRole.ReadOnly = true;
            // 
            // dgvPicture
            // 
            dgvPicture.HeaderText = "Hình Avatar";
            dgvPicture.Image = Properties.Resources.user_gear;
            dgvPicture.ImageLayout = DataGridViewImageCellLayout.Zoom;
            dgvPicture.MinimumWidth = 100;
            dgvPicture.Name = "dgvPicture";
            dgvPicture.ReadOnly = true;
            // 
            // dgvEdit
            // 
            dgvEdit.AutoSizeMode = DataGridViewAutoSizeColumnMode.None;
            dgvEdit.FillWeight = 50F;
            dgvEdit.HeaderText = "";
            dgvEdit.Image = Properties.Resources.nib;
            dgvEdit.ImageLayout = DataGridViewImageCellLayout.Zoom;
            dgvEdit.MinimumWidth = 50;
            dgvEdit.Name = "dgvEdit";
            dgvEdit.ReadOnly = true;
            dgvEdit.Width = 50;
            // 
            // dgvDel
            // 
            dgvDel.AutoSizeMode = DataGridViewAutoSizeColumnMode.None;
            dgvDel.FillWeight = 50F;
            dgvDel.HeaderText = "";
            dgvDel.Image = Properties.Resources.delete;
            dgvDel.ImageLayout = DataGridViewImageCellLayout.Zoom;
            dgvDel.MinimumWidth = 50;
            dgvDel.Name = "dgvDel";
            dgvDel.ReadOnly = true;
            dgvDel.Width = 50;
            // 
            // dgvPictureTemp
            // 
            dgvPictureTemp.HeaderText = "pathImage";
            dgvPictureTemp.MinimumWidth = 8;
            dgvPictureTemp.Name = "dgvPictureTemp";
            dgvPictureTemp.ReadOnly = true;
            dgvPictureTemp.Visible = false;
            // 
            // UserView
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1314, 816);
            Controls.Add(guna2DataGridView1);
            Name = "UserView";
            Text = "UserView";
            Load += UserView_Load;
            Controls.SetChildIndex(guna2Panel1, 0);
            Controls.SetChildIndex(guna2DataGridView1, 0);
            guna2Panel1.ResumeLayout(false);
            guna2Panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)guna2PictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)guna2DataGridView1).EndInit();
            ResumeLayout(false);
        }

        #endregion
        private Guna.UI2.WinForms.Guna2HtmlLabel guna2HtmlLabel3;
        private Guna.UI2.WinForms.Guna2PictureBox guna2PictureBox1;
        private Guna.UI2.WinForms.Guna2DataGridView guna2DataGridView1;
        private DataGridViewTextBoxColumn dgvSr;
        private DataGridViewTextBoxColumn dgvid;
        private DataGridViewTextBoxColumn dgvName;
        private DataGridViewTextBoxColumn dgvUserName;
        private DataGridViewTextBoxColumn dgvPass;
        private DataGridViewTextBoxColumn dgvPhone;
        private DataGridViewTextBoxColumn dgvRole;
        private DataGridViewImageColumn dgvPicture;
        private DataGridViewImageColumn dgvEdit;
        private DataGridViewImageColumn dgvDel;
        private DataGridViewTextBoxColumn dgvPictureTemp;
    }
}