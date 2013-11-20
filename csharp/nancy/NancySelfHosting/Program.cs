using System;
using Nancy;
using Nancy.Hosting.Self;

namespace NancySelfHosting
{

    class Program
    {
        static void Main()
        {
            var nancyHost = new NancyHost(new Uri("http://localhost:8888/"),
                new DefaultNancyBootstrapper(),
                new HostConfiguration {UrlReservations = new UrlReservations {CreateAutomatically = true}});

            nancyHost.Start();

            Console.WriteLine("Nancy now listening - navigating to http://localhost:8888/. Press enter to stop");
            Console.ReadKey();

            nancyHost.Stop();

            Console.WriteLine("Stopped. Good bye!");
        }
    }
}
