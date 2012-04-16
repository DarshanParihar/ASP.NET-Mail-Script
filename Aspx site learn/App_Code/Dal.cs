using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Dal
/// </summary>
public class Dal
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connecttodata"].ToString());
	public Dal()
	{
		//
		// TODO: Add constructor logic here
		//

	}
    public void Insert(int id, string name, string salary, string mobile)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@Ename", name);
            cmd.Parameters.AddWithValue("@salary", salary);
            cmd.Parameters.AddWithValue("@mobile",mobile);
            cmd.ExecuteNonQuery();

        }
        
        finally
        {
            con.Close();
        }
    }
}