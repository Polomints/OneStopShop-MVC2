using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OneStopShop.Models;

namespace OneStopShop.ViewModels
{
    public class SubCategoryManagerViewModel
    {
        public SubCategoryMaster SubCategory { get; set; }
        public List<CategoryMaster> Categories { get; set; }
    }
}