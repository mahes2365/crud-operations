using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace crud {
    public class query
    {
        public void insert(string id,string name,string gender,string age,string designation,string doj)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spcreate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id", id);
            cmd.Parameters.AddWithValue("@emp_name", name);
            cmd.Parameters.AddWithValue("@emp_gender", gender);
            cmd.Parameters.AddWithValue("@emp_age", age);
            cmd.Parameters.AddWithValue("@emp_designation", designation);
            cmd.Parameters.AddWithValue("@emp_doj", doj);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }
        public void delete(string id)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spremove", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id", id);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }

        public void update(string empid,string id, string name, string gender, string age, string designation, string doj)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spupdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id2", empid);
            cmd.Parameters.AddWithValue("@emp_id", id);
            cmd.Parameters.AddWithValue("@emp_name", name);
            cmd.Parameters.AddWithValue("@emp_gender", gender);
            cmd.Parameters.AddWithValue("@emp_age", age);
            cmd.Parameters.AddWithValue("@emp_designation", designation);
            cmd.Parameters.AddWithValue("@emp_doj", doj);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
                con.Dispose();
            }
        }
        public bool getData(string rd)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id", rd);
            bool value;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    value = true;
                }
                else
                {
                    value = false;
                }
                return value;
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
            }
        }
        public DataSet showData(string empid)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id", empid);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            try
            {
                con.Open();
                DataSet ds = new DataSet();
                sda.Fill(ds);
                return (ds);
            }
            catch(Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
            }
        }
        public DataSet showDataAll()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("spreadll", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            try
            {
                con.Open();
                DataSet ds = new DataSet();
                sda.Fill(ds);
                return (ds);
            }
            catch (Exception err)
            {
                throw err;
            }
            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
            }
        }
    }
    
}