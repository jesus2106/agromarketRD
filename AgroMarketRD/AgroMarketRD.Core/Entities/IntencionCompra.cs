namespace AgroMarketRD.Core.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("intencion_compra")]
    public partial class IntencionCompra
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public IntencionCompra()
        {
            IntencionesCompra = new HashSet<ProductoIntencionCompra>();
        }

        [Column("id")]
        public int Id { get; set; }
        [Column("usuario_id")]
        public int UsuarioId { get; set; }
        [Column("fecha_creacion")]
        public DateTime FechaCreacion { get; set; }
        [Column("fecha_expiracion")]
        public DateTime FechaExpiracion { get; set; }
        [Column("activo")]
        public bool Activo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductoIntencionCompra> IntencionesCompra { get; set; }
    }
}
