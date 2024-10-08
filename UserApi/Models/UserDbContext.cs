using Microsoft.EntityFrameworkCore;

namespace UserApi.Models
{
    public class UserDbContext : DbContext
    {
        internal object newUser;

        public UserDbContext()
        {

        }
        public UserDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                string conn = "server=localhost; database=Users; user=root; password=";

                optionsBuilder.UseMySQL(conn);
            }
        }
        public DbSet<User> Users { get; set; } = null!;
    }
}
