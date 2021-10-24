using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ZadatakRadnici.Models
{
    public class Radnik
    {
        public int Id { get; set; }

        [Required]
        public string Ime { get; set; }

        [Required]
        public string Prezime { get; set; }

        [Required]
        public string Adresa { get; set; }

        [Required]
        public decimal NetoIznos { get; set; }

        public decimal Porez { get; set; }
        public decimal PioNaTeretZaposlenog { get; set; }
        public decimal ZdravstvoNaTeretZaposlenog { get; set; }
        public decimal NezaposlenostNaTeretZaposlenog { get; set; }

        public decimal PioNaTeretPoslodavca { get; set; }
        public decimal ZdravstvoNaTeretPoslodavca { get; set; }
        public decimal BrutoIznos { get; set; }
    }
}