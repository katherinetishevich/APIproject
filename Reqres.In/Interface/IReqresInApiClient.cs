using Reqres.In.ApiModels;
using RestSharp;


namespace Reqres.In
{
    public interface IReqresInApiClient
    {
        IRestResponse GetUsers(int page);
        IRestResponse PostUser(CreateUser user);
        IRestResponse PutUser(UpdateUser user);
        IRestResponse DeleteUser(int id);

    }
}
