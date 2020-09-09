using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Discuss.Models
{
    public class UserModel
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string PasswordHash { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Avatar { get; set; }
        public int RoleId { get; set; }
        public int Status { get; set; }
        public int Experience { get; set; }
        public int Coin { get; set; }
    }
}