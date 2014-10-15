using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OneStopShop.ViewModels
{
    public class CategoryIndexViewModel
    {
        public int NumberOfCategories { get; set; }
        public List<string> Categories { get; set; }
    }
}