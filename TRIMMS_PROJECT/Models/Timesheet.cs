﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TRIMMS_PROJECT.Models
{
    public partial class Timesheet
    {
        public string TsId { get; set; }
        public string EmpId { get; set; }
        public DateTime Date { get; set; }
        public string ModuleId { get; set; }
        public string TaskId { get; set; }
        public string Description { get; set; }
        public string Billable { get; set; }
        public string Status { get; set; }
        public DateTime YyyyMmDdMonday { get; set; }

        public virtual Module Module { get; set; }
        public virtual Task Task { get; set; }
    }
}