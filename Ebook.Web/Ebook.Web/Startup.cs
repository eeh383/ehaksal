using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ebook.Web.Startup))]
namespace Ebook.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
