using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace OneStopShop.Models
{
    [MetadataType(typeof(SubCategoryMasterMetaData))]
    public partial class SubCategoryMaster
    {
        // Validation rules for the Category class

        [Bind(Exclude = "SubCategoryId")]
        public class SubCategoryMasterMetaData
        {
            [ScaffoldColumn(false)]
            public object SubCategoryId { get; set; }

            [DisplayName("CategoryMaster")]
            public object CategoryId { get; set; }

            [Required(ErrorMessage = "A Sub Category Name is required")]
            [StringLength(50)]
            public object Name { get; set; }

            [Required(ErrorMessage = "A Sub Category Description is required")]
            [StringLength(500)]
            public object Description { get; set; }

            [DisplayName("Photo URL")]
            [StringLength(100)]
            public object PhotoURL { get; set; }
        }  
    }
}