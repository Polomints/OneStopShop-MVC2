using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OneStopShop.Models;

namespace OneStopShop.ViewModels
{
    public class CategoryBrowseViewModel
    {
        public CategoryMaster Category { get; set; }
        public List<SubCategoryMaster> SubCategories { get; set; }
        public List<ReferenceSitesMaster> ReferenceSites { get; set; }
        public List<BlogMaster> Blogs { get; set; }
    }
}