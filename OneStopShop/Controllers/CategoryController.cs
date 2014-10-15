using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.ViewModels;
using OneStopShop.Models;

namespace OneStopShop.Controllers
{
    public class CategoryController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /Category/

        public ActionResult Index()
        {
            // Retrieve list of Categories from database
            var categories = from category in shopDB.CategoryMasters select category.Name;

            // Set up our ViewModel
            var viewModel = new CategoryIndexViewModel()
            {
                Categories = categories.ToList(),
                NumberOfCategories = categories.Count()
            };
            return View(viewModel);
        }
        
        //
        // GET: /Category/Browse?Catgory=?Disco
        public ActionResult Browse(string category)
        {
            // Retrieve Category and its Associated SubCategories from database
            var categoryModel = shopDB.CategoryMasters.Include("SubcategoryMasters").Single(g => g.Name == category);

            var viewModel = new CategoryBrowseViewModel()
            {
                Category = categoryModel,
                SubCategories = categoryModel.SubCategoryMasters.ToList(),
                ReferenceSites = categoryModel.ReferenceSitesMasters.ToList(),
                Blogs = categoryModel.BlogMasters.ToList()
            };
           
            return View(viewModel);
        }

        //
        // GET: /Category/SubCategory/5
        public ActionResult SubCategory(int id)
        {
            var subCategory = shopDB.SubCategoryMasters.Single(s => s.SubCategoryId == id);
            return View(subCategory);
        }

        //
        // GET: /Category/Blog/5
        public ActionResult Blog(int id)
        {
            var blog = shopDB.BlogMasters.Include("BlogThreads").Single(b => b.BlogId == id);
            return View(blog);
        }

        public ActionResult Blogs()
        {
            // Get latest five blogs
            var blogs = GetLatestFiveBlogs(5);
            return View(blogs);
        }

        private List<BlogMaster> GetLatestFiveBlogs(int count)
        {
            return shopDB.BlogMasters.OrderByDescending(a => a.BlogThreads.Count()).Take(count).ToList();
        }

        //
        // GET: /Category/CategoryMenu
        [ChildActionOnly]
        public ActionResult CategoryMenu()
        {
            var categories = shopDB.CategoryMasters.OrderBy(n => n.Name).ToList();
            return View(categories);
        }
    }
}
