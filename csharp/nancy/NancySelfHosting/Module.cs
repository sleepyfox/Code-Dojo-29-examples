using System.Diagnostics;
using Nancy;

namespace NancySelfHosting
{
    public class Module : NancyModule
    {
        public Module()
        {
            Get["/"] = parameters =>
            {
                var query = "Query: " + Request.Url.Query;
                Debug.WriteLine(query);
                return query;
            };
        }
    }
}
