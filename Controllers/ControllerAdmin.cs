using LibraryNF.Helper;
using System.Web.Mvc;

namespace Discuss.Controllers
{
    public class ControllerAdmin : Controller
    {
        /// <summary>
        /// Trả ra UserId trong Cookie
        /// Nếu chưa đăng nhập thì trả ra 0
        /// </summary>
        public int GetUserId()
        {
            if (Request.Cookies["UserLogin"] == null)
                return 0;
            else
                return Request.Cookies["UserLogin"]["UserId"].ToNumber(0);
        }
        public string GetUserName()
        {
            if (Request.Cookies["UserLogin"] == null)
                return "";
            else
                return Request.Cookies["UserLogin"]["UserName"];
        }
        public bool IsLogin()
        {
            if (Request.Cookies["UserLogin"] == null)
                return false;
            else
                return true;
            //return Request.Cookies["UserLogin"] != null;
        }

        /// <summary>
        /// Trả về True nếu Người đăng nhập là Admin
        /// </summary>
        public bool IsAdmin()
        {
            if (Request.Cookies["UserLogin"] == null)
                return false;
            else if (Request.Cookies["UserLogin"]["RoleId"].ToNumber(0) == 1)
                return true;
            else return false;
        }
    }
}