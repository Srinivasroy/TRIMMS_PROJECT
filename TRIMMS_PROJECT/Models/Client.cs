﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TRIMMS_PROJECT.Models
{
    public partial class Client
    {
        public Client()
        {
            Projects = new HashSet<Project>();
        }

        public string ClientId { get; set; }
        public string ClientGroupId { get; set; }
        public string ClientName { get; set; }
        public string LocationId { get; set; }

        public virtual ClientGroup ClientGroup { get; set; }
        public virtual Location Location { get; set; }
        public virtual ICollection<Project> Projects { get; set; }
    }
}