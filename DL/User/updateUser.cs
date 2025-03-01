﻿using System;
using System.Linq;

namespace DL.User
{
    public class updateUser
    {
        public async Task<bool> UpdateUser(int id, string name, string userName, string password, string phone, string picture,string role)
        {
            try
            {
                // Sử dụng DataProviderEntity để kết nối với cơ sở dữ liệu
                using (var context = new DataProviderEntity())
                {
                    // Tìm người dùng có ID = id


                    var user = context.Users.Find(id);
                    bool exists = context.Users.Any(a => a.UserName == userName || a.Phone == phone);
                    if (exists)
                    {
                        // If username already exists, return false
                        return false;
                    }

                    // Kiểm tra nếu người dùng tồn tại
                    if (user != null)
                    {
                        // Ghi nhận trước khi cập nhật
                        Console.WriteLine($"Trước khi cập nhật: Name = {user.Name}, UserName = {user.UserName}, Phone = {user.Phone}");

                        user.Name = string.IsNullOrEmpty(name) ? user.Name : name;
                        user.UserName = string.IsNullOrEmpty(userName) ? user.UserName : userName;
                        user.Password = string.IsNullOrEmpty(password) ? user.Password : password;
                        user.Phone = string.IsNullOrEmpty(phone) ? user.Phone : phone;
                        user.Picture = string.IsNullOrEmpty(picture) ? user.Picture : picture;  // Nếu picture null, giữ nguyên giá trị cũ
                        user.Role = string.IsNullOrEmpty(role) ? user.Role : role;  // Nếu picture null, giữ nguyên giá trị cũ

                        // Ghi nhận sau khi cập nhật
                        Console.WriteLine($"Sau khi cập nhật: Name = {user.Name}, UserName = {user.UserName}, Phone = {user.Phone}");

                        // Lưu thay đổi vào cơ sở dữ liệu
                        var  rowsAffected = await context.SaveChangesAsync();
                        Console.WriteLine($"Số bản ghi bị ảnh hưởng: {rowsAffected}");

                        return rowsAffected > 0; // Trả về true nếu có thay đổi
                    }
                    else
                    {
                        // Ghi lại lỗi khi không tìm thấy người dùng
                        Console.WriteLine($"Không tìm thấy người dùng với ID: {id}");
                        return false; // Trả về false khi không tìm thấy người dùng
                    }
                }
            }
            catch (Exception ex)
            {
                // Ghi lại chi tiết lỗi vào console
                Console.WriteLine($"Lỗi khi cập nhật người dùng: {ex.Message}");
                Console.WriteLine($"Chi tiết lỗi: {ex.StackTrace}");

                // Ném lại lỗi để dừng chương trình và dễ dàng kiểm soát lỗi
                throw; // Ném lại lỗi để thông báo và dừng chương trình
            }
        }


    }
}
