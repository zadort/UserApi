namespace UserApi.Models
{
    public class User
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public bool License { get; set; }
        public object Email { get; internal set; }
    }
}
