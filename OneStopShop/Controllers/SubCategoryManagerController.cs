using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.Models;
using OneStopShop.ViewModels;

namespace OneStopShop.Controllers
{
    [Authorize(Users = "Diamond")]
    public class SubCategoryManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /SubCategoryManager/

        public ActionResult Index()
        {
            var subCategories = shopDB.SubCategoryMasters.Include("CategoryMaster").ToList();
            return View(subCategories);
        }

        //
        // GET: /SubCategoryManager/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /SubCategoryManager/Create

        public ActionResult Create()
        {
            var viewModel = new SubCategoryManagerViewModel
            {
                SubCategory = new SubCategoryMaster(),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        } 

        //
        // POST: /SubCategoryManager/Create

        [HttpPost]
        public ActionResult Create(SubCategoryMaster SubCategory)
        {
            if (ModelState.IsValid)
            {
                //Save Sub Category
                shopDB.AddToSubCategoryMasters(SubCategory);
                shopDB.SaveChanges();

                return RedirectToAction("Index");
            }
            // Invalid – redisplay with errors
            var viewModel = new SubCategoryManagerViewModel
            {
                SubCategory = new SubCategoryMaster(),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        }
        
        //
        // GET: /SubCategoryManager/Edit/5
 
        public ActionResult Edit(int id)
        {
            var viewModel = new SubCategoryManagerViewModel
            {
                SubCategory = shopDB.SubCategoryMasters.Single(s => s.SubCategoryId == id),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        }

        //
        // POST: /SubCategoryManager/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var subCategory = shopDB.SubCategoryMasters.Single(s => s.SubCategoryId == id);

            try
            {
                // TODO: Add update logic here
                UpdateModel(subCategory, "SubCategory");
                shopDB.SaveChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                var viewModel = new SubCategoryManagerViewModel
                {
                    SubCategory = shopDB.SubCategoryMasters.Single(s => s.SubCategoryId == id),
                    Categories = shopDB.CategoryMasters.ToList()
                };
                return View(viewModel);
            }
        }

        //
        // GET: /SubCategoryManager/Delete/5
 
        public ActionResult Delete(int id)
        {
            var subCategory = shopDB.SubCategoryMasters.Single(s => s.SubCategoryId == id);
            return View(subCategory);
        }

        //
        // POST: /SubCategoryManager/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var subCategories = shopDB.SubCategoryMasters.Include("CategoryMaster").Single(s => s.SubCategoryId == id);

            shopDB.DeleteObject(subCategories);
            shopDB.SaveChanges();

            return View("Deleted");
        }
    }
}
