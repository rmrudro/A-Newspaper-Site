using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JagoNews.Startup))]
namespace JagoNews
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
