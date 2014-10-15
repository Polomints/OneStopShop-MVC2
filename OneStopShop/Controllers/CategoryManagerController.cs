using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.Models;

namespace OneStopShop.Controllers
{
    [Authorize(Users="Diamond")]
    public class CategoryManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /CategoryManager/

        public ActionResult Index()
        {
            var categories = shopDB.CategoryMasters.ToList();
            return View(categories);
        }

        //
        // GET: /CategoryManager/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /CategoryManager/Create

        public ActionResult Create()
        {

            var category =new CategoryMaster();
            return View(category);
        } 

        //
        // POST: /CategoryManager/Create

        [HttpPost]
        public ActionResult Create(CategoryMaster categoryMaster)
        {
            if (ModelState.IsValid)
            {
                //Save Category
                shopDB.AddToCategoryMasters(categoryMaster);
                shopDB.SaveChanges();

                return RedirectToAction("Index");
            }
            // Invalid – redisplay with errors
            var category = new CategoryMaster();
            return View(category);
        }
        
        //
        // GET: /CategoryManager/Edit/5
 
        public ActionResult Edit(int id)
        {
            var category = shopDB.CategoryMasters.Single(c => c.CategoryId == id);
            return View(category);
        }

        //
        // POST: /CategoryManager/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var category = shopDB.CategoryMasters.Single(c => c.CategoryId == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(category);
                shopDB.SaveChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View(category);
            }
        }

        //
        // GET: /CategoryManager/Delete/5
 
        public ActionResult Delete(int id)
        {
            var category = shopDB.CategoryMasters.Single(c => c.CategoryId == id);
            return View(category);
        }

        //
        // POST: /CategoryManager/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var category = shopDB.CategoryMasters.Include("SubCategoryMasters").Include("ReferenceSitesMasters").Include("BlogMasters").Single(c => c.CategoryId == id);

            shopDB.DeleteObject(category);
            shopDB.SaveChanges();

            return View("Deleted");
        }
    }
}
