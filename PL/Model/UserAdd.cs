﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using System.IO;
using BL;
using Microsoft.VisualBasic.ApplicationServices;
using PL.View;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using DL;
using System.Security.Cryptography;
using BL.User;
using Guna.UI2.WinForms;

namespace PL.Model
{
    public partial class UserAdd : SampleAdd
    {
        public UserAdd()
        {
            InitializeComponent();
            cb_Role.Items.AddRange(new string[] { "Quản lý", "Nhân viên", "Khách hàng"});
        }
        public int id = 0;
        public override void btn_Save_Click_1(object sender, EventArgs e)
        {

        }
        private void UserAdd_Load(object sender, EventArgs e)
        {

        }

        private void btn_Browse_Click(object sender, EventArgs e)
        {

        }
        private string filePathnew = null;

        private void loadImagesByPath()
        {
            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.bmp";

                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    // Lấy đường dẫn ảnh được chọn
                    string filePath = openFileDialog.FileName;
                    filePathnew = filePath;

                    // Hiển thị ảnh trong PictureBox
                    txtPic.Image = Image.FromFile(filePath);
                }
                if (string.IsNullOrEmpty(filePathnew))
                {
                    ShowMessage("Vui lòng chọn ảnh người dùng.", "Lỗi", MessageDialogIcon.Error);
                    return;
                }
            }
        }

        private void btnBrowse_Click(object sender, EventArgs e)
        {
            loadImagesByPath();
        }

        private string SaveImageToFolder(string path)
        {
            if (path != null)
            {
                // Lấy thư mục gốc của dự án bằng cách đi lên từ thư mục bin
                string projectDirectory = Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\..\..\"));

                // Đảm bảo thư mục ImagesUsers tồn tại
                string destinationFolder = Path.Combine(projectDirectory, "ImagesUsers");
                if (!Directory.Exists(destinationFolder))
                {
                    Directory.CreateDirectory(destinationFolder);
                }

                // Tính toán hash của file ảnh (Sử dụng SHA256)
                string fileHash = CalculateFileHash(path);

                // Tạo đường dẫn đích với hash làm tên file
                string destinationFilePath = Path.Combine(destinationFolder, fileHash + Path.GetExtension(path));

                // Kiểm tra nếu file đã tồn tại trong thư mục đích
                if (File.Exists(destinationFilePath))
                {
                    // Nếu file đã tồn tại, không cần lưu lại nữa
                    return destinationFilePath;
                }

                // Sao chép file vào thư mục đích
                try
                {
                    File.Copy(path, destinationFilePath);
                }
                catch (Exception ex)
                {
                    ShowMessage($"Đã xảy ra lỗi khi sao chép file: {ex.Message}", "Lỗi", MessageDialogIcon.Error);
                }


                // Trả về đường dẫn file đích
                return destinationFilePath;
            }

            return null; // Trường hợp không có file được chọn
        }

        private string CalculateFileHash(string filePath)
        {
            using (var sha256 = SHA256.Create())
            {
                // Đọc file và tính toán hash
                using (var fileStream = File.OpenRead(filePath))
                {
                    byte[] hashBytes = sha256.ComputeHash(fileStream);
                    // Chuyển đổi hash thành chuỗi hex
                    StringBuilder hashStringBuilder = new StringBuilder();
                    foreach (byte b in hashBytes)
                    {
                        hashStringBuilder.Append(b.ToString("x2"));
                    }
                    return hashStringBuilder.ToString();
                }
            }
        }



        private async void btn_Save_Click(object sender, EventArgs e)
        {
            bool isValid = false;
            while (!isValid)
            {
                try
                {
                    // Thông tin cần cập nhật
                    string name = txt_Name.Text.Trim();
                    string userName = txt_UserName.Text.Trim();
                    string password = txt_Password.Text.Trim();
                    string phone = txt_Phone.Text.Trim();
                    string role = cb_Role.Text;

                    // Kiểm tra nếu trường không rỗng hoặc null
                    if (string.IsNullOrEmpty(name))
                    {
                        ShowMessage("Tên không được để trống.", "Lỗi", MessageDialogIcon.Error);
                        return;
                    }

                    if (string.IsNullOrEmpty(userName))
                    {
                        ShowMessage("Tên tài khoản không được để trống.", "Lỗi", MessageDialogIcon.Error);
                        return;
                    }

                    if (string.IsNullOrEmpty(password))
                    {
                        ShowMessage("Mật khẩu không được để trống.", "Lỗi", MessageDialogIcon.Error);
                        return;
                    }

                    // Lấy mảng byte từ PictureBox
                    string picture = SaveImageToFolder(filePathnew);

                    // Gọi hàm AddUser
                    bool result = await new addUsersBL().AddUser(name, userName, password, phone, picture, role);
                    if (result)
                    {
                        ShowMessage("Thêm người dùng thành công!", "Thành công", MessageDialogIcon.Information);
                        this.DialogResult = DialogResult.OK;
                        this.Close();
                        isValid = true;
                    }
                    else
                    {
                        ShowMessage("Người dùng đã tồn tại.", "Lỗi", MessageDialogIcon.Error);
                        isValid = true;
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage($"Đã xảy ra lỗi: {ex.Message}", "Lỗi", MessageDialogIcon.Error);
                }
            }
        }

        private void ShowMessage(string message, string title, MessageDialogIcon icon)
        {
            Guna2MessageDialog messageDialog = new Guna2MessageDialog();
            messageDialog.Caption = title;
            messageDialog.Text = message;
            messageDialog.Icon = icon;
            messageDialog.Buttons = MessageDialogButtons.OK;
            messageDialog.Style = MessageDialogStyle.Default;
            messageDialog.Show();
        }



        private void txt_UserName_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn_Close_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void guna2TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void guna2Panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cb_CreatedBy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
