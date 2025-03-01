﻿using DL;
using DL.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.User
{
    public class UpdateUsersBL
    {

        public async Task<bool> UpdateUser(int id, string name, string userName, string password, string phone, string picture, string role)
        {
            try
            {
                // Tạo đối tượng updateUser
                var updater = new updateUser();

                // Gọi phương thức UpdateUser của lớp updateUser
                bool result  = await updater.UpdateUser(id, name, userName, password, phone, picture,role);

                return result;
            }
            catch (Exception ex)
            {
                // Xử lý và ghi lại lỗi
                Console.WriteLine($"Lỗi khi gọi phương thức UpdateUser trong BL: {ex.Message}");
                throw ex;
            }
        }

    }
}
