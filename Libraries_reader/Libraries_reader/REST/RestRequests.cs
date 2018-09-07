using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using Newtonsoft.Json;
using System.Windows;
using System.Threading;

namespace Libraries_reader.REST
{
    class RestRequests <T>
    {
        static HttpClient client = new HttpClient();

        public RestRequests()
        {

        }

        //Vrati list prijatych dat prelozanych z Json do String//
        public async Task<T> GetRequest(string requestUri)
        {
            T data;
            HttpResponseMessage response = await client.GetAsync(requestUri);

            if (response.IsSuccessStatusCode)
            {
                data = JsonConvert.DeserializeObject<T>(await response.Content.ReadAsStringAsync());
                return data;
            }

            else return default(T);
        }

        public async Task<T> GetRequest(string requestUri, string SQL_query)
        {
            CancellationTokenSource cts = new CancellationTokenSource();
            try
            {
                cts.CancelAfter(2500);
                T data;
                if (SQL_query != null) requestUri += "/?query=" + SQL_query;

                HttpResponseMessage response = await client.GetAsync(requestUri);

                if (response.IsSuccessStatusCode)
                {
                    data = JsonConvert.DeserializeObject<T>(await response.Content.ReadAsStringAsync());
                    return data;
                }
            }
            catch { MessageBox.Show("GET požadavek selhal.", "Error"); }

            return default(T);
            
        }

        public async Task PutRequest(string requestUri, int id, T model)
        {
            try { requestUri += "/" + id.ToString(); }
            catch { MessageBox.Show("Put požadavek nemá jako parametr id číslo.", "Error"); }

            var response = await client.PutAsJsonAsync(requestUri, model);

            if (!response.IsSuccessStatusCode) MessageBox.Show("Put požadavek neuspěl.", "Error");
        }

        public async Task PostRequest(string requestUri, T model)
        {
            var response = await client.PostAsJsonAsync(requestUri, model);

            if (!response.IsSuccessStatusCode) MessageBox.Show("Create požadavek neuspěl.", "Error");
        }

        public async Task DeleteRequest(string requestUri, int id)
        {
            try { requestUri += "/" + id.ToString(); }
            catch { MessageBox.Show("Delete požadavek nemá jako parametr id číslo.", "Error"); }

            var response = await client.DeleteAsync(requestUri);

            if (!response.IsSuccessStatusCode) MessageBox.Show("Delete požadavek selhal.", "Error");
        }
    }
}
