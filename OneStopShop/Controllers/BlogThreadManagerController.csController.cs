using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.Models;
using OneStopShop.ViewModels;

namespace OneStopShop.Controllers
{
    public class BlogThreadManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /BlogThreadManagerController.cs/
        [Authorize (Users = "Diamond")]
        public ActionResult Index()
        {
            var threads = shopDB.BlogThreads.Include("BlogMaster").Include("User").ToList();
            return View(threads);
        }

        //
        // GET: /BlogThreadManagerController.cs/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /BlogThreadManagerController.cs/Create
        [Authorize]
        public ActionResult Create(int BlogId)
        {
            var viewModel = new BlogThreadManagerViewModel
            {
                BlogThread = new BlogThread()
            };
            viewModel.BlogThread.BlogId = BlogId;
            return View(viewModel);
        } 

        //
        // POST: /BlogThreadManagerController.cs/Create

        [HttpPost]
        public ActionResult Create(BlogThread BlogThread, int BlogId)
        {
            if (ModelState.IsValid)
            {
                //Save Blog Thread
                BlogThread.DateTime = System.DateTime.Now;
                BlogThread.UserId = 1;
                BlogThread.UserName = User.Identity.Name;
                BlogThread.BlogId = BlogId;
                shopDB.AddToBlogThreads(BlogThread);
                shopDB.SaveChanges();

                return RedirectToAction("Blog", "Category", new { id = BlogThread.BlogId });
            }
            // Invalid – redisplay with errors
            var viewModel = new BlogThreadManagerViewModel
            {
                BlogThread = new BlogThread()
            };
            return View(viewModel);
        }
        
        //
        // GET: /BlogThreadManagerController.cs/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /BlogThreadManagerController.cs/Edit/5

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
        // GET: /BlogThreadManagerController.cs/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /BlogThreadManagerController.cs/Delete/5

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
