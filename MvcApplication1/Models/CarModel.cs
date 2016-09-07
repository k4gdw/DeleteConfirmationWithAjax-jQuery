/***********************************************
 * Author: Ricardo Covo 
 * Blog:   ricardocovo.wordpress.com
 * Comments: This code is for reference/demo purposes only and is provided "as is".
 *           Feel free to use the code and extended as you need.
 /***********************************************/
using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication1.Models
{
    public class CarModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }        
    }
}