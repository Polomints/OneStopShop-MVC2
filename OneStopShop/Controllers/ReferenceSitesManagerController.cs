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
    public class ReferenceSitesManagerController : Controller
    {
        StopShopDBEntities shopDB = new StopShopDBEntities();
        //
        // GET: /ReferenceSitesManager/

        public ActionResult Index()
        {
            var referenceSites = shopDB.ReferenceSitesMasters.Include("CategoryMaster").ToList();
            return View(referenceSites);
        }

        //
        // GET: /ReferenceSitesManager/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /ReferenceSitesManager/Create

        public ActionResult Create()
        {
            var viewModel = new ReferenceSitesManagerViewModel
            {
                ReferenceSite = new ReferenceSitesMaster(),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        } 

        //
        // POST: /ReferenceSitesManager/Create

        [HttpPost]
        public ActionResult Create(ReferenceSitesMaster ReferenceSite)
        {
            if (ModelState.IsValid)
            {
                //Save Reference Sites
                shopDB.AddToReferenceSitesMasters(ReferenceSite);
                shopDB.SaveChanges();

                return RedirectToAction("Index");
            }
            // Invalid – redisplay with errors
            var viewModel = new ReferenceSitesManagerViewModel
            {
                ReferenceSite = new ReferenceSitesMaster(),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        }
        
        //
        // GET: /ReferenceSitesManager/Edit/5
 
        public ActionResult Edit(int id)
        {
            var viewModel = new ReferenceSitesManagerViewModel
            {
                ReferenceSite = shopDB.ReferenceSitesMasters.Single(r => r.ReferenceSitesId == id),
                Categories = shopDB.CategoryMasters.ToList()
            };
            return View(viewModel);
        }

        //
        // POST: /ReferenceSitesManager/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            var referenceSite = shopDB.ReferenceSitesMasters.Single(r => r.ReferenceSitesId == id);
            try
            {
                // TODO: Add update logic here
                UpdateModel(referenceSite, "ReferenceSite");
                shopDB.SaveChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                var viewModel = new ReferenceSitesManagerViewModel
                {
                    ReferenceSite = shopDB.ReferenceSitesMasters.Single(r => r.ReferenceSitesId == id),
                    Categories = shopDB.CategoryMasters.ToList()
                };
                return View(viewModel);
            }
        }

        //
        // GET: /ReferenceSitesManager/Delete/5
 
        public ActionResult Delete(int id)
        {
            var referenceSite = shopDB.ReferenceSitesMasters.Single(r => r.ReferenceSitesId == id);
            return View(referenceSite);
        }

        //
        // POST: /ReferenceSitesManager/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var referenceSites = shopDB.ReferenceSitesMasters.Include("CategoryMaster").Single(r => r.ReferenceSitesId == id);

            shopDB.DeleteObject(referenceSites);
            shopDB.SaveChanges();

            return View("Deleted");
        }
    }
}
