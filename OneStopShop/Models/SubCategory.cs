using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace OneStopShop.Models
{
    public class SubCategory
    {
        public string Title { get; set; }
        public Category Category { get; set; }
    }
}