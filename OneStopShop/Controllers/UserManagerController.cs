using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OneStopShop.Models;

namespace OneStopShop.Controllers
{
    [Authorize(Users = "Diamond")]
    public class UserManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /UserManager/

        public ActionResult Index()
        {
            var users = shopDB.Users.ToList();
            return View(users);
        }

        //
        // GET: /UserManager/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /UserManager/Create

        public ActionResult Create()
        {
            var user = new User();
            return View(user);
        } 

        //
        // POST: /UserManager/Create

        [HttpPost]
        public ActionResult Create(User userdetail)
        {
            if (ModelState.IsValid)
            {
                //Save Category
                shopDB.AddToUsers(userdetail);
                shopDB.SaveChanges();

                return RedirectToAction("Index");
            }
            // Invalid – redisplay with errors
            var user = new User();
            return View(user);
        }
        
        //
        // GET: /UserManager/Edit/5
 
        public ActionResult Edit(int id)
        {
            var user = shopDB.Users.Single(u => u.UserId == id);
            return View(user);
        }

        //
        // POST: /UserManager/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var user = shopDB.Users.Single(u => u.UserId == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(user);
                shopDB.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View(user);
            }
        }

        //
        // GET: /UserManager/Delete/5
 
        public ActionResult Delete(int id)
        {
            var user = shopDB.Users.Single(u => u.UserId == id);
            return View(user);
        }

        //
        // POST: /UserManager/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var user = shopDB.Users.Include("BlogThreads").Include("BlogMasters").Single(u => u.UserId == id);

            shopDB.DeleteObject(user);
            shopDB.SaveChanges();

            return View("Deleted");
        }
    }
}
