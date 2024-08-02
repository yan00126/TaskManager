using System.Configuration;
using Dapper;
using MySql.Data.MySqlClient;

namespace TaskManager;

public class DataService (string connectionString)
{
    private readonly string connectionString = connectionString;

    //Load Data - retrieving data from database

    public async Task<List<T>> LoadData<T, U>(string sql, U parameters)
    {
        using(var connection = new MySqlConnection(connectionString))
        {
            var rows = await connection.QueryAsync<T>(sql, parameters);
            return rows.ToList();
        }
    }

    //Save Data - saving or manipulating data in the database

    public async Task SaveData<U>(string sql,U parameters)
    {
        using(var connection = new MySqlConnection(connectionString))
        {
            await connection.ExecuteAsync(sql, parameters);
        }
    }

}
