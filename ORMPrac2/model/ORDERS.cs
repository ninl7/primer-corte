//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ORMPrac2.model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ORDERS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ORDERS()
        {
            this.COSTOMER = new HashSet<COSTOMER>();
        }
    
        public int Id { get; set; }
        public decimal ORD_NUM { get; set; }
        public decimal ORD_AMOUNT { get; set; }
        public decimal AVANCE_AMOUNT { get; set; }
        public string CUST_CODE { get; set; }
        public string AGENT_CODE { get; set; }
        public string ORD_DESCRIPTION { get; set; }
        public int AGENTSAGENT_CODE { get; set; }
    
        public virtual AGENTS AGENTS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COSTOMER> COSTOMER { get; set; }
    }
}
