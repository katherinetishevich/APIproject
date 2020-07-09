using BoDi;
using TechTalk.SpecFlow;

namespace Reqres.In
{
    [Binding]
    public sealed class Hooks
    {
        public IObjectContainer Container;
        public Hooks(IObjectContainer container)
        {
            Container = container;
        }

        [BeforeScenario]
        public void BeforeScenario()
        {
            var client =new ReqresInApiClient();
            Container.RegisterInstanceAs<IReqresInApiClient>(client);

        }

        [AfterScenario]
        public void AfterScenario()
        {
            //test
        }
    }
}
