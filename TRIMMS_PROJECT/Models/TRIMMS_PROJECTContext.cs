using Microsoft.EntityFrameworkCore;
namespace TRIMMS_PROJECT.Models
{
    public class TRIMMS_PROJECTContext : DbContext
    {

        


            public TRIMMS_PROJECTContext()
            {
            }

            public TRIMMS_PROJECTContext(DbContextOptions<TRIMMS_PROJECTContext> options)
                : base(options)
            {
            }


            public virtual DbSet<Employee> Employee { get; set; }

        
    }


}
