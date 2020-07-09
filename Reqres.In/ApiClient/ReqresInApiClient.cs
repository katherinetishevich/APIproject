using Reqres.In.ApiModels;
using RestSharp;
using System;
using System.Configuration;
using TechTalk.SpecFlow.CommonModels;

namespace Reqres.In
{
   public  class ReqresInApiClient : IReqresInApiClient
    {
 
        public readonly RestClient Client;
        public ReqresInApiClient()
            
            {
                Client = Client ??new RestClient();
                Client.BaseUrl = new Uri(ConfigurationManager.AppSettings.Get("ReqresInBaseUrl"));
            }
        

        public IRestResponse GetUsers(int page)
        {
            string resours = page== default(int) ? ($"users") : ($"users?page=(page)");
            IRestRequest req = new RestRequest(resours);
            var response = Client.Get(req);
            return response;
        }


        public IRestResponse PostUser(CreateUser user) 
        {
            IRestRequest req = new RestRequest("users");
            req.AddJsonBody(user);
            var response = Client.Post(req);
            return response;
        }
        

        public IRestResponse DeleteUser(int id)
        {
            IRestRequest req = new RestRequest("id");
            req.AddJsonBody(id);
            var response = Client.Delete(req);
            return response;

        }

        public IRestResponse PutUser(UpdateUser user)
        {
            IRestRequest req = new RestRequest("updateUser");
            req.AddJsonBody(user);
            var response = Client.Put(req);
            return response;
        }
    }

}
