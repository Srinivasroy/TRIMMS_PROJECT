﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TRIMMS_PROJECT.Models
{
    public partial class Location
    {
        public Location()
        {
            Clients = new HashSet<Client>();
            Employees = new HashSet<Employee>();
            Holidays = new HashSet<Holiday>();
        }

        public string LocationId { get; set; }
        public string LocationName { get; set; }
        public string StateId { get; set; }

        public virtual State State { get; set; }
        public virtual ICollection<Client> Clients { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
        public virtual ICollection<Holiday> Holidays { get; set; }
    }
}