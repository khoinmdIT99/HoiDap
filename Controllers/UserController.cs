using Discuss.Models;
using LibraryNF.Helper;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Discuss.Controllers
{
    public class UserController : ControllerAdmin
    {
        public ActionResult Login()
        {
            return View();
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpGet]
        public JsonResult CheckLogin(string userName, string password)
        {
            //Mã hóa password
            string passwordHash = "";
            //Mã hóa MD5 cho password
            using (MD5 md5Hash = MD5.Create())
            {
                passwordHash = GetMd5Hash(md5Hash, password);
            }
            //Mang vào CSDL kiểm tra thông tin đăng nhập
            DBM.GetOne("sp_User_Login", new { UserName = userName, PasswordHash = passwordHash }, out UserModel userModel);
            //Lưu Cookie cho những lần truy cập sau
            //Kiểm tra nếu đăng nhập thành công thì Lưu Cookie
            if (userModel != null)
            {
                //Lưu Cookie
                HttpCookie userInfo = new HttpCookie("UserLogin")//UserLogin: Tên Cookie
                {
                    ["UserId"] = userModel.UserId.ToString(),
                    ["UserName"] = userModel.UserName,
                    ["FullName"] = userModel.FullName,
                    ["RoleId"] = userModel.RoleId.ToString(),
                    ["Email"] = userModel.Email.ToString()
                };
                //Lưu 30 ngày
                userInfo.Expires.AddDays(30);
                Response.Cookies.Add(userInfo);
            }
            return Json(userModel, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult RegisterUser(UserModel userModel)
        {
            string passwordHash = "";
            //Mã hóa MD5 cho password
            using (MD5 md5Hash = MD5.Create())
            {
                passwordHash = GetMd5Hash(md5Hash, userModel.PasswordHash);
            }

            DBM.ExecStore("sp_User_Register", new
            {
                userModel.UserName,
                userModel.FullName,
                PasswordHash = passwordHash,
                userModel.Phone,
                userModel.Email
            }, out int isExists);
            if (isExists == 0)
                return Json("Tên đăng nhập đã tồn tại!", JsonRequestBehavior.AllowGet);
            else
                return Json("", JsonRequestBehavior.AllowGet);
        }

        public static string GetMd5Hash(MD5 md5Hash, string input)
        {
            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }
    }
}