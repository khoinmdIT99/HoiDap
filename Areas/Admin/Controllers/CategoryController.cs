using Discuss.Controllers;
using Discuss.Models;
using LibraryNF.Helper;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Discuss.Areas.Admin.Controllers
{
    public class CategoryController : ControllerAdmin
    {
        public ActionResult Index()
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
        public ActionResult GetPagination(int pageSize, string categoryName)
        {
            DBM.ExecStore("sp_Category_Count", new { CategoryName = categoryName }, out int totalRow);

            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);
            PaginationObject<CategoryModel> pagination = new PaginationObject<CategoryModel>
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
        public ActionResult GetTable(int page, int pageSize, string categoryName)
        {
            DBM.GetList("sp_Category_GetTable", new { CategoryName = categoryName, Page = page, PageSize = pageSize }, out List<CategoryModel> categoryModels);
            return View(categoryModels);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Insert(CategoryModel categoryModel)
        {
            DBM.ExecStore("sp_Category_Insert", new { CategoryName = categoryModel.CategoryName, Alias = categoryModel.CategoryName.ToSlugUrl() }, out int categoryIdNew);
            return Json(categoryIdNew, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetById(string categoryId)
        {
            DBM.GetOne("sp_Category_GetById", new { CategoryId = categoryId }, out CategoryModel categoryModel);
            return Json(categoryModel, JsonRequestBehavior.AllowGet);
        }

        [HttpPut]
        public JsonResult Update(CategoryModel categoryModel)
        {
            DBM.ExecStore("sp_Category_Update", new { CategoryId = categoryModel.CategoryId, CategoryName = categoryModel.CategoryName, Alias = categoryModel.CategoryName.ToSlugUrl() }, out int categoryIdNew);
            return Json(categoryIdNew, JsonRequestBehavior.AllowGet);
        }

        [HttpDelete]
        public JsonResult Delete(string categoryId)
        {
            DBM.ExecStore("sp_Category_Delete", new { CategoryId = categoryId });
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}