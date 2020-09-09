using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;

namespace Discuss.Models
{
    public class PaginationObject<T> where T : class
    {
        public int Page { set; get; }
        public int PageSize { set; get; }
        public int TotalPages { set; get; }
        public int TotalRow { set; get; }
        public int MaxPage { set; get; }
        public T ObjectFilter { set; get; }
        public int FirstRowOnPage => Math.Max(Page - 3, 1);

        public int LastRowOnPage => Math.Min(Page + 3, TotalPages);
    }
}