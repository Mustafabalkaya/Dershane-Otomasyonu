//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Dershane_sistem.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Borclarr
    {
        public int Ogrid { get; set; }
        public string OgrAd { get; set; }
        public string OgrSoyad { get; set; }
        public string OgrKalanBorc { get; set; }
    
        public virtual Ogrenci Ogrenci { get; set; }
    }
}
