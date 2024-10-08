namespace UserApi.Models
{
    public class Dto
    {
        public record CreatedUserDto(string Name, int Age, bool License);
    }
}
