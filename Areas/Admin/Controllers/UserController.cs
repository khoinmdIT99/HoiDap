using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using Discuss.Controllers;
using Discuss.Models;
using LibraryNF.Helper;

namespace Discuss.Areas.Admin.Controllers
{
    public class UserController : ControllerAdmin
    {
        /// <summary>
        /// Quản lý thành viên
        /// RoleId = 1 (Admin) mới được truy cập vào Action này
        /// </summary>
        public ActionResult Index()
        {
            if (IsAdmin() == false) //IsAdmin() chính là hàm để kiểm tra có phải Admin hay không
                return Redirect("/User/Login");
            return View();
        }

        /// <summary>
        /// Trả ra đoạn HTML phân trang
        /// Thuộc trang Index
        /// </summary>
        public ActionResult GetPagination(int pageSize, string userName)
        {
            DBM.ExecStore("sp_User_Count", new { UserName = userName }, out int totalRow);
            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);
            PaginationObject<UserModel> pagination = new PaginationObject<UserModel>
            {
                TotalPages = totalPage,
                TotalRow = totalRow,
                PageSize = pageSize
            };
            return View(pagination);
        }

        /// <summary>
        /// Trả ra HTML cho bảng
        /// </summary>
        public ActionResult GetTable(int page, int pageSize, string userName)
        {
            DBM.GetList("sp_User_GetTable", new { UserName = userName, Page = page, PageSize = pageSize }, out List<UserModel> userModels);
            return View(userModels);
        }

        [HttpGet]
        public JsonResult GetById(string userId)
        {
            DBM.GetOne("sp_User_GetById", new { UserId = userId }, out UserModel userModel);
            return Json(userModel, JsonRequestBehavior.AllowGet);
        }

        [HttpPut]
        public JsonResult Update(UserModel userModel)
        {
            DBM.ExecStore("sp_User_Update", new
            {
                userModel.UserId,
                userModel.UserName,
                userModel.FullName,
                userModel.Phone,
                userModel.Email,
                userModel.RoleId
            }, out int isExists);
            if (isExists == 0)
                return Json("Tên đăng nhập đã tồn tại!", JsonRequestBehavior.AllowGet);
            else
                return Json("", JsonRequestBehavior.AllowGet);
        }

        [HttpDelete]
        public JsonResult Delete(string userId)
        {
            DBM.ExecStore("sp_User_Delete", new { UserId = userId });
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}