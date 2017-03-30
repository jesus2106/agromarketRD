namespace AgroMarketRD.Core.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AccesoLog
    {
        [Key]
        [Column("usuario_id", Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int UsuarioId { get; set; }

        [Key]
        [Column("solicitud", Order = 1)]
        [StringLength(250)]
        public string Solicitud { get; set; }

        [StringLength(150)]
        [Column("endpoint")]
        public string Endpoint { get; set; }

        [Key]
        [Column("fecha_creacion", Order = 2)]
        public DateTime FechaCreacion { get; set; }
    }
}
