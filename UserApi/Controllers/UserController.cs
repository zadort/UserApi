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
                return StatusCode(201, context.newUser.ToList());
            }
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

        [HttpPost]
        public 
    }
}
