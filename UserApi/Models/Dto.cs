namespace UserApi.Models
{
    public class Dto
    {
        public record CreatedUserDti(string Name, int Age, bool License)
        {

        }
    }
}
