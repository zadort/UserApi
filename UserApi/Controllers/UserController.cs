using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using UserApi.Models;

namespace UserApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        [HttpGet]
        public ActionResult<List<User>> Get()
        {
            using (var context = new UserDbContext())
            {
                return StatusCode(201, NewMethod(context));
            }
        }

        private static object NewMethod(UserDbContext context)
        {
            return context.newUser.ToList();
        }

        private ActionResult<List<User>> StatusCode(int v, object value)
        {
            throw new NotImplementedException();
        }

        [HttpGet]
        public ActionResult<User> Post(CreateUserDto user)
        {
            using (var context = new UserDbContext())
            {
                return Ok();

            }
        }
        #region
        [HttpGet("{id}")]
        public ActionResult<User> GetById(Guid id)
        {
            using (var context = new UserDbContext())
            {
                var user = context.Users.Find(id);
                if (user == null)
                {
                    return NotFound();
                }

                return Ok(user);
            }
        }
        #endregion
        [HttpPut("{id}")]
        public ActionResult<User> Put(Guid id, [FromBody] CreateUserDto userDto)
        {


            using (var context = new UserDbContext())
            {
                var existingUser = context.Users.Find(id);
               
                existingUser.Name = userDto.Name;

                context.SaveChanges();
                return Ok(existingUser);
            }
        }

        [HttpPost]
        public ActionResult<User> Post([FromBody] CreateUserDto userDto)
        {


            using (var context = new UserDbContext())
            {
                var user = new User
                {
                    Id = Guid.NewGuid(),
                    Name = userDto.Name,
                    Email = userDto.Email
                };

                context.Users.Add(user);
                context.SaveChanges();

                return CreatedAtAction(nameof(Get), new { id = user.Id }, user);
            }
        }

        [HttpDelete("{id}")]
        public ActionResult<object> Delete(Guid id)
        {
            using (var context = new UserDbContext())
            {
                var user = context.Users.Find(id);
                context.Users.Remove(user);
                context.SaveChanges();
                return Ok(new { message = "Törölve!" });
            }
        }
    }
}
