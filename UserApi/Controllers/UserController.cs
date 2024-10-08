using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using UserApi.Models;

namespace UserApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        [HttpGet]
        public ActionResult<List<User>> GetAll()
        {
            using (var context = new UserDbContext())
            {
                var users = context.Users.ToList();
                return Ok(users);
            }
        }

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

        [HttpPost]
        public ActionResult<User> Post([FromBody] CreateUserDto userDto)
        {
            if (userDto == null)
            {
                return BadRequest("A felhasználói adatok szükségesek.");
            }

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

                return CreatedAtAction(nameof(GetById), new { id = user.Id }, user);
            }
        }

        [HttpPut("{id}")]
        public ActionResult<User> Put(Guid id, [FromBody] CreateUserDto userDto)
        {
            if (userDto == null)
            {
                return BadRequest("A felhasználói adatok szükségesek.");
            }

            using (var context = new UserDbContext())
            {
                var existingUser = context.Users.Find(id);
                if (existingUser == null)
                {
                    return NotFound();
                }

                existingUser.Name = userDto.Name;
                existingUser.Email = userDto.Email;

                context.SaveChanges();
                return Ok(existingUser);
            }
        }

        [HttpDelete("{id}")]
        public ActionResult Delete(Guid id)
        {
            using (var context = new UserDbContext())
            {
                var user = context.Users.Find(id);
                if (user == null)
                {
                    return NotFound();
                }

                context.Users.Remove(user);
                context.SaveChanges();
                return Ok(new { message = "A felhasználó sikeresen törölve!" });
            }
        }
    }
}
