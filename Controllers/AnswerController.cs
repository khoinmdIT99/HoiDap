using Discuss.Models;
using LibraryNF.Helper;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Discuss.Controllers
{
    public class AnswerController : ControllerAdmin
    {
        public ActionResult Index(int askId)
        {
            DBM.GetList("sp_Answer_FillByAskId", new { AskId = askId }, out List<AnswerModel> answerModels);
            return View(answerModels);
        }

        public ActionResult AnswerVote(int answerId, int countVote)
        {
            int userId = GetUserId();

            DBM.ExecStore("sp_VoteAnswer_CheckExists", new { AnswerId = answerId, UserId = userId }, out int isExists);

            AnswerModel answerModel = new AnswerModel
            {
                AnswerId = answerId,
                CountVote = countVote,
                IsVote = isExists == 1 ? true : false
            };
            return PartialView(answerModel);
        }

        public ActionResult ConfirmAnswer(int askId, int answerId)
        {
            int userId = GetUserId();

            DBM.ExecStore("sp_Answer_CheckViewConfirmAnswer", new { AnswerId = answerId, AskId = askId, UserId = userId }, out int isConfirm);

            AnswerModel answerModel = new AnswerModel
            {
                AskId = askId,
                AnswerId = answerId,
                IsConfirm = isConfirm
            };
            return PartialView(answerModel);
        }

        [HttpGet]
        public JsonResult Confirm(int askId, int answerId)
        {
            int userId = GetUserId();

            DBM.ExecStore("sp_Answer_ConfirmAnswer", new { AnswerId = answerId, AskId = askId, UserId = userId });
            return Json("", JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult UnConfirm(int askId, int answerId)
        {
            int userId = GetUserId();

            DBM.ExecStore("sp_Answer_UnConfirmAnswer", new { AnswerId = answerId, AskId = askId, UserId = userId });
            return Json("", JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult Vote(int answerId = 0)
        {
            int userId = GetUserId();
            DBM.ExecStore("sp_VoteAnswer_Vote", new { AnswerId = answerId, UserId = userId, UserName = GetUserName() }, out int countVote);
            return Json(countVote, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult UnVote(int answerId = 0)
        {
            int userId = GetUserId();
            DBM.ExecStore("sp_VoteAnswer_UnVote", new { AnswerId = answerId, UserId = userId, UserName = GetUserName() }, out int countLike);
            return Json(countLike, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult Add(AnswerModel answerModel)
        {
            int userId = GetUserId();
            DBM.ExecStore("sp_Answer_Insert", new { answerModel.AskId, UserId = userId, answerModel.AnswerContent });
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}