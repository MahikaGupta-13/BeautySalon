using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BeautySalon.Startup))]
namespace BeautySalon
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
