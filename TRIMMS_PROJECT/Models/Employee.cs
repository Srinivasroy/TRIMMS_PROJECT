﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Numerics;
using System.Reflection.Metadata;

namespace TRIMMS_PROJECT.Models
{
    public class Employee
    {

        [Key]
        [Required]
        public string Emp_ID { get; set; } = "";
        public string Emp_Name { get; set; } = "";

        public string DOB { get; set; } = "";
        public string Gender { get; set; } = "";
        public string Email_ID { get; set; } = "";
        public string Contact_Number { get; set; } = "";
        public string Address { get; set; } = "";
        public string State_Name { get; set; } = "";
        public string Country_ID { get; set; } = "";
        public string PinCode { get; set; } = "";
        public string Emp_Type { get; set; } = "";
        public string Department { get; set; } = "";
        public string Designation { get; set; } = "";
        public string DOJ { get; set; } = "";
        public string Level { get; set; } = "";
        public string  Band { get; set; } = "";
        public string  Reporting_Manager { get; set; } = "";
        public string Location { get; set; } = "";
        public string WorkEXPDOJ { get; set; } = "";




    }
}