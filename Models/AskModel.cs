using System;
using System.Collections.Generic;

namespace Discuss.Models
{
    public class AskModel
    {
        public int AskId { set; get; }

        public string Content { set; get; }

        public int CategoryId { set; get; }

        public int Status { get; set; }

        public int UserId { set; get; }

        public string UserName { set; get; }
        public string CategoryName { set; get; }
        public string FullName { set; get; }
        public string SlugUrl { set; get; }

        public int CountAnswer { set; get; }
        public int CountView { set; get; }

        public int CountLike { set; get; }
        public int Coin { set; get; }
        public DateTime DateCreated { set; get; }
        public bool IsLike { set; get; }
        public bool IsLogin { set; get; }
        /// <summary>
        /// Bạn có phải người hỏi câu này
        /// </summary>
        public bool IsBoss { set; get; }
        public List<CategoryModel> CategoryModels { set; get; }
    }
}