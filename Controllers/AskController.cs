using Discuss.Models;
using LibraryNF.Helper;
using System.Web.Mvc;

namespace Discuss.Controllers
{
    public class AskController : ControllerAdmin
    {
        [Route("cau-hoi/{alias}-{askId:int:min(1)}")]
        public ActionResult AskDetail(int askId)
        {
            DBM.GetOne("sp_Ask_Detail", new { AskId = askId }, out AskModel askModel);
            askModel.IsLogin = IsLogin();
            askModel.IsBoss = askModel.UserId == GetUserId() ? true : false;
            return View(askModel);
        }

        /// <summary>
        /// ActionResult là View
        /// </summary>
        public ActionResult LikeAsk(int countLike, int askId = 0)
        {
            int userId = GetUserId();

            DBM.ExecStore("sp_AskLike_CheckExists", new { AskId = askId, UserId = userId }, out int isExists);

            AskModel askModel = new AskModel
            {
                AskId = askId,
                CountLike = countLike,
                IsLike = isExists == 1 ? true : false
            };
            return View(askModel);
        }

        /// <summary>
        /// Đây là API. JsonResult là API
        /// </summary>
        [HttpGet]
        public JsonResult Like(int askId = 0)
        {
            int userId = GetUserId();
            DBM.ExecStore("sp_AskLike_Like", new { AskId = askId, UserId = userId, UserName = GetUserName() }, out int countLike);
            return Json(countLike, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Add(AskModel askModel)
        {
            int userId = GetUserId();
            //Xử lý ký tự lạ
            LibraryNF.Helper.HtmlHelper htmlHelper = new LibraryNF.Helper.HtmlHelper();
            askModel.Content = htmlHelper.StripHtmlHoc247(askModel.Content);

            string slugUrl = askModel.Content.Length > 100
                ? askModel.Content.Substring(0, 100).ToSlugUrl()
                : askModel.Content.ToSlugUrl();
            DBM.GetOne("sp_Ask_Add", new { Content = askModel.Content, CategoryId = askModel.CategoryId, UserId = userId, SlugUrl = slugUrl }, out AskModel askModel1);
            return Json(askModel1, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Update(AskModel askModel)
        {
            int userId = GetUserId();
            //Xử lý ký tự lạ
            LibraryNF.Helper.HtmlHelper htmlHelper = new LibraryNF.Helper.HtmlHelper();
            askModel.Content = htmlHelper.StripHtmlHoc247(askModel.Content);

            string slugUrl = askModel.Content.Length > 100
                ? askModel.Content.Substring(0, 100).ToSlugUrl()
                : askModel.Content.ToSlugUrl();
            DBM.GetOne("sp_Ask_Update", new { askModel.AskId, Content = askModel.Content, CategoryId = askModel.CategoryId, UserId = userId, SlugUrl = slugUrl }, out AskModel askModel1);
            return Json(askModel1, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult DisLike(int askId = 0)
        {
            int userId = GetUserId();
            DBM.ExecStore("sp_AskLike_DisLike", new { AskId = askId, UserId = userId, UserName = GetUserName() }, out int countLike);
            return Json(countLike, JsonRequestBehavior.AllowGet);
        }
    }
}