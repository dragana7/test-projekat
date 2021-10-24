using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZadatakRadnici.Models;
using ZadatakRadnici.Ostalo;

namespace ZadatakRadnici.Controllers
{
    public class RadnikController : Controller
    {
        PovezivanjeBaza baze = new PovezivanjeBaza();

        // GET: Radnik
        public ActionResult Index()
        {
            DataSet dataSet = baze.PrikaziSve();
            ViewBag.radnik = dataSet.Tables[0];
            return View();
        }

        // GET: Radnik/DodatiRadnika
        public ActionResult DodatiRadnika()
        {
            return View();
        }

        //POST: Radnik/DodatiRadnika
        [HttpPost]
        public ActionResult DodatiRadnika(FormCollection formCollection)
        {
            Radnik radnik = new Radnik();
            radnik.Ime = formCollection["ime"];
            radnik.Prezime = formCollection["prezime"];
            radnik.Adresa = formCollection["adresa"];
            radnik.NetoIznos = Convert.ToDecimal(formCollection["netoIznos"]);

            baze.DodatiRadnika(radnik);

            return RedirectToAction("Index");
        }

        // GET: Radnik/IzmeniRadnika/5
        public ActionResult IzmeniRadnika(int Id)
        {
            DataSet dataSet = baze.PrikaziRadnika(Id);
            ViewBag.radnikDetalji = dataSet.Tables[0];
            return View();
        }

        //POST: Radnik/IzmeniRadnika/5
        [HttpPost]
        public ActionResult IzmeniRadnika(int Id, FormCollection formCollection)
        {
            Radnik radnik = new Radnik();
            radnik.Id = Id;
            radnik.Ime = formCollection["ime"];
            radnik.Prezime = formCollection["prezime"];
            radnik.Adresa = formCollection["adresa"];
            radnik.NetoIznos = Convert.ToDecimal(formCollection["netoIznos"]);

            baze.IzmeniRadnika(radnik);
            return RedirectToAction("Index");
        }

        //GET: Radnik/ObrisiRadnika/5
        public ActionResult ObrisiRadnika(int id)
        {
            baze.ObrisiRadnika(id);
            return RedirectToAction("Index");
        }

        //GET: Radnik/PrikaziRadnika/5
        public ActionResult PrikaziRadnika(int id)
        {
            DataSet dataSet = baze.PrikaziRadnika(id);
            ViewBag.radnik = dataSet.Tables[0];
            return View();
        }
    }
}