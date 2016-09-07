
/***********************************************
 * Author: Ricardo Covo 
 * Blog:   ricardocovo.wordpress.com
 * Comments: This code is for reference/demo purposes only and is provided "as is".
 *           Feel free to use the code and extended as you need.
 /***********************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;
using MvcApplication1.Data;

namespace MvcApplication1.Controllers
{
    public class CarsController : Controller
    {
        //
        // GET: /Cars/

        /// <summary>
        /// Index page. Simply shows the list of cars
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            List<CarModel> model = CarRepository.GetCars();
            return View(model);
        }
        
        /// <summary>
        /// This is the action that deletes your record
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Delete(int id)
        {
            try
            {
                //TODO: Here you will have your call to your repository.
                return Content(Boolean.TrueString);
            }
            catch
            {
                //TODO: Log error				
                return Content(Boolean.FalseString);
            }

        }
    }
}
