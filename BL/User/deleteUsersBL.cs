﻿using DL;
using DL.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;

namespace BL.User
{
    public class deleteUsersBL
    {
        public async Task<bool> DeleteUser(int id)
        {
            return await new deleteUsers().DeleteUsers(id);
        }
    }
}
