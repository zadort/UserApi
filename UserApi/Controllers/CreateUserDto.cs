namespace UserApi.Controllers
{
    public class CreateUserDto
    {
        public string Name { get; internal set; }
        public object Email { get; internal set; }
    }
}