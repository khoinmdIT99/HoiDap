using Discuss.Controllers;
using Discuss.Models;
using LibraryNF.Helper;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Discuss.Areas.Admin.Controllers
{
    public class AskController : ControllerAdmin
    {
        public ActionResult Admin()
        {
            //Kiểm tra đăng nhập
            if (IsAdmin() == false) //IsLogin() chính là hàm của ControllerAdmin mà CategoryController kế thừa từ ControllerAdmin
                return Redirect("/User/Login");
            return View();
        }

        /// <summary>
        /// Trả ra đoạn HTML phân trang
        /// Thuộc trang Index
        /// </summary>
        public ActionResult GetPagination(int pageSize, int categoryId)
        {
            DBM.ExecStore("sp_Ask_Count", new { CategoryId = categoryId }, out int totalRow);

            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);
            PaginationObject<AskModel> pagination = new PaginationObject<AskModel>
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
        public ActionResult GetTable(int page, int pageSize, int categoryId)
        {
            DBM.GetList("sp_Ask_GetPaging", new { CategoryId = categoryId, Page = page, PageSize = pageSize }, out List<AskModel> askModels);
            return View(askModels);
        }

        [HttpGet]
        public JsonResult GetById(string askId)
        {
            DBM.GetOne("sp_Ask_Detail", new { askId = askId }, out AskModel askModel);
            return Json(askModel, JsonRequestBehavior.AllowGet);
        }

        [HttpPut]
        public JsonResult Update(AskModel askModel)
        {
            string slugUrl = askModel.Content.Length > 100
                ? askModel.Content.Substring(0, 100).ToSlugUrl()
                : askModel.Content.ToSlugUrl();
            DBM.GetOne("sp_Ask_Update", new { askModel.AskId, askModel.Content, askModel.CategoryId, UserId = askModel.UserId, SlugUrl = slugUrl }, out AskModel askModel1);
            return Json(askModel1, JsonRequestBehavior.AllowGet);
        }

        [HttpDelete]
        public JsonResult Delete(string askId)
        {
            DBM.ExecStore("sp_Ask_Delete", new { AskId = askId });
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}