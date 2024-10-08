﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiEmployee.Models
{
    public class Employee
    {    
        [Key]
        public Guid id { get; set; }

        [Required]
        [MaxLength(50,ErrorMessage ="Name can only be 50 characters long")]
        public string Name { get; set; }
    }
}
