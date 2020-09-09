using System;

namespace Discuss.Models
{
    public class AnswerModel
    {
        public int AnswerId { set; get; }

        /// <summary>
        /// ID câu hỏi
        /// </summary>
        public int AskId { set; get; }

        /// <summary>
        /// Nội dung
        /// </summary>
        public string AnswerContent { set; get; }

        /// <summary>
        /// Trạng thái
        /// </summary>
        public int Status { get; set; }

        /// <summary>
        /// User Id
        /// </summary>
        public int UserId { set; get; }

        public string FullName { set; get; }

        /// <summary>
        /// Số lượng Vote
        /// </summary>
        public int CountVote { set; get; }
        public bool IsVote { set; get; }
        public int IsConfirm { set; get; }

        public DateTime DateCreated { set; get; }
    }
}