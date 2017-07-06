using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ista420_project.Startup))]
namespace ista420_project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
