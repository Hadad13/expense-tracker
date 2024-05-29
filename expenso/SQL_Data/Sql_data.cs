using expenso;
using SQLite;
using System.Collections.Generic;

class SqlData
{
    private readonly SQLiteConnection conn;
    private readonly string fileName;

    public SqlData(string fileName)
    {
        this.fileName = fileName;
        string path = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal);
        path = System.IO.Path.Combine(path, fileName);
        conn = new SQLiteConnection(path);
        conn.CreateTable<Transfer>();
        conn.CreateTable<User_Data>();
    }

    // Transfer Table Methods
    public List<Transfer> GetTransfers(int userId)
    {
        var query = "SELECT * FROM Transfer WHERE UserId = ?";
        var transfers = conn.Query<Transfer>(query, userId);
        return transfers;
    }

    public void ClearDatabase()
    {
        // Delete all rows from the Transfer table
        conn.DeleteAll<Transfer>();
        conn.DeleteAll<User_Data>();

        // If you have other tables, delete them as well
        // conn.DeleteAll<AnotherTable>();
    }

    public void InsertTransfer(Transfer transfer)
    {
        conn.Insert(transfer);
    }

    public void UpdateTransfer(Transfer transfer)
    {
        conn.Update(transfer);
    }

    public void DeleteTransfer(Transfer transfer)
    {
        conn.Delete(transfer);
    }

    // User Table Methods
    public List<User_Data> GetUsers()
    {
        string strSql = "SELECT * FROM User_Data";
        return conn.Query<User_Data>(strSql);
    }

    public void InsertUser(User_Data user)
    {
        conn.Insert(user);
    }

    public void UpdateUser(User_Data user)
    {
        conn.Update(user);
    }

    public void DeleteUser(User_Data user)
    {
        conn.Delete(user);
    }
}
