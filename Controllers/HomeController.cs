using Discuss.Models;
using LibraryNF.Helper;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Discuss.Controllers
{
    public class HomeController : Controller
    {
        public int pageSize = 5;

        [Route("dat-cau-hoi")] //Viết lại URL cho đẹp
        public ActionResult CreateAsk()
        {
            //Kết nối đến CSDL để lấy dữ liệu
            DBM.GetList("sp_Category_GetAll", new { }, out List<CategoryModel> categoryModels);
            return View(categoryModels);
        }

        [Route("sua-cau-hoi/{askId}")]
        public ActionResult EditAsk(int askId)
        {
            DBM.GetList("sp_Category_GetAll", new { }, out List<CategoryModel> categoryModels);
            DBM.GetOne("sp_Ask_Detail", new { AskId = askId }, out AskModel askModel);
            askModel.CategoryModels = categoryModels;
            return View(askModel);
        }

        [Route("search/{searchContent}")]
        public ActionResult SearchContent(string searchContent)
        {
            DBM.ExecStore("sp_Ask_CountSearchContent", new { SearchContent = searchContent.Trim() }, out int totalRow);
            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);

            DBM.GetList("sp_Ask_GetPagingSearchContent", new { SearchContent = searchContent.Trim(), Page = 1, PageSize = pageSize }, out List<AskModel> askViewModels);
            PaginationObject<List<AskModel>> pagination = new PaginationObject<List<AskModel>>
            {
                Page = 1,
                TotalPages = totalPage,
                TotalRow = totalRow,
                PageSize = pageSize,
                ObjectFilter = askViewModels
            };
            return View("Index", pagination);
        }

        [Route("trang-{page}")]
        public ActionResult Index(int page)
        {
            DBM.ExecStore("sp_Ask_Count", new { CategoryId = 0 }, out int totalRow);
            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);

            DBM.GetList("sp_Ask_GetPaging", new { CategoryId = 0, Page = page, PageSize = pageSize }, out List<AskModel> askViewModels);
            PaginationObject<List<AskModel>> pagination = new PaginationObject<List<AskModel>>
            {
                Page = page,
                TotalPages = totalPage,
                TotalRow = totalRow,
                PageSize = pageSize,
                ObjectFilter = askViewModels
            };
            return View("Index", pagination);
        }
        /// <summary>
        /// Trang chủ.
        /// Route là viết lại đường dẫn
        /// alias? thì dấu ? được hiểu là: có cũng được, không có cũng đuọcư
        /// </summary>
        /// <param name="alias"></param>
        /// <returns></returns>
        [Route("{alias?}")]
        public ActionResult Index(string alias)
        {
            int categoryId = 0;
            if (!string.IsNullOrEmpty(alias))//Trả về true khi alias rỗng
            {
                DBM.GetOne("sp_Category_FillByAlias", new { Alias = alias }, out CategoryModel categoryModel);
                if (categoryModel != null)
                    categoryId = categoryModel.CategoryId;
            }

            DBM.ExecStore("sp_Ask_Count", new { CategoryId = categoryId }, out int totalRow);
            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);

            DBM.GetList("sp_Ask_GetPaging", new { CategoryId = categoryId, Page = 1, PageSize = pageSize }, out List<AskModel> askViewModels);
            PaginationObject<List<AskModel>> pagination = new PaginationObject<List<AskModel>>
            {
                Page = 1,
                TotalPages = totalPage,
                TotalRow = totalRow,
                PageSize = pageSize,
                ObjectFilter = askViewModels
            };
            return View("Index", pagination);
        }

        [Route("{alias}/trang-{page}")]
        public ActionResult Index(string alias, int page)
        {
            DBM.GetOne("sp_Category_FillByAlias", new { Alias = alias }, out CategoryModel categoryModel);

            DBM.ExecStore("sp_Ask_Count", new { CategoryId = categoryModel.CategoryId }, out int totalRow);
            //Đếm xem có bao nhiêu trang
            int totalPage = (int)Math.Ceiling((double)totalRow / pageSize);

            DBM.GetList("sp_Ask_GetPaging", new { CategoryId = categoryModel.CategoryId, Page = page, PageSize = pageSize }, out List<AskModel> askViewModels);
            PaginationObject<List<AskModel>> pagination = new PaginationObject<List<AskModel>>
            {
                Page = page,
                TotalPages = totalPage,
                TotalRow = totalRow,
                PageSize = pageSize,
                ObjectFilter = askViewModels
            };
            return View("Index", pagination);
        }

        public ActionResult Pager(PaginationObject<List<AskModel>> paginationObject)
        {
            return PartialView(paginationObject);
        }
    }
}