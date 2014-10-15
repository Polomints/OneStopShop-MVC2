using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OneStopShop.Models;

namespace OneStopShop.ViewModels
{
    public class ReferenceSitesManagerViewModel
    {
        public ReferenceSitesMaster ReferenceSite { get; set; }
        public List<CategoryMaster> Categories { get; set; }
    }
}