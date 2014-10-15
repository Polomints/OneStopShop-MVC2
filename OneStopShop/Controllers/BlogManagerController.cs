using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.Models;
using OneStopShop.ViewModels;

namespace OneStopShop.Controllers
{
    public class BlogManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /BlogManager/
        [Authorize(Users = "Diamond")]
        public ActionResult Index()
        {
            var blogs = shopDB.BlogMasters.Include("CategoryMaster").Include("User").ToList();
            return View(blogs);
        }

        //
        // GET: /BlogManager/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }


        [Authorize]
        public ActionResult Create(int categoryId)
        {
            var viewModel = new BlogManagerViewModel
            {
                Blog = new BlogMaster()
            };
            viewModel.Blog.CategoryId = categoryId;
            return View(viewModel);
        } 

        //
        // POST: /BlogManager/Create

        [HttpPost]
        public ActionResult Create(BlogMaster Blog, int Categoryid)
        {
            if (ModelState.IsValid)
            {
                //Save Sub Category
                Blog.DateTime = System.DateTime.Now;
                Blog.UserId = 1;
                Blog.UserName = User.Identity.Name;
                Blog.CategoryId = Categoryid;
                shopDB.AddToBlogMasters(Blog);
                shopDB.SaveChanges();

                return RedirectToAction("Browse", "Category", new { Category = Blog.CategoryMaster.Name });
            }
            // Invalid – redisplay with errors
            var viewModel = new BlogManagerViewModel
            {
                Blog = new BlogMaster()
            };
            return View(viewModel);
        }
        
        //
        // GET: /BlogManager/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /BlogManager/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /BlogManager/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /BlogManager/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
