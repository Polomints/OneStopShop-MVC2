using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace OneStopShop.Models
{
    [MetadataType(typeof(ReferenceSitesMasterMetaData))]
    public partial class ReferenceSitesMaster
    {
        // Validation rules for the Category class

        [Bind(Exclude = "ReferenceSitesId")]
        public class ReferenceSitesMasterMetaData
        {
            [ScaffoldColumn(false)]
            public object ReferenceSitesId { get; set; }

            [DisplayName("CategoryMaster")]
            public object CategoryId { get; set; }

            [Required(ErrorMessage = "A Reference Site Name is required")]
            [StringLength(50)]
            public object Name { get; set; }

            [Required(ErrorMessage = "A Reference Site URL is required")]
            [StringLength(500)]
            public object URL { get; set; }
        }  
    }
}