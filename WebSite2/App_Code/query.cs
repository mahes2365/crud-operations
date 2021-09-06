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
        public void DML(string dml_qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(dml_qury, con);
            
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
        //public void update(string dml_qury,string name,string gender,string age,string des,string doj,string id)
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //    SqlConnection con = new SqlConnection(constr);
        //    SqlCommand cmd = new SqlCommand(dml_qury, con);
        //    cmd.Parameters.AddWithValue("@emp_name", name);
        //    cmd.Parameters.AddWithValue("@emp_gender", gender);
        //    cmd.Parameters.AddWithValue("@emp_age", age);
        //    cmd.Parameters.AddWithValue("@emp_designation", des);
        //    cmd.Parameters.AddWithValue("@emp_doj", doj);
        //    cmd.Parameters.AddWithValue("@emp_id", id);
        //    try
        //    {
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (Exception err)
        //    {
        //        throw err;
        //    }
        //    finally
        //    {
        //        con.Close();
        //        cmd.Dispose();
        //        con.Dispose();
        //    }
        //}
        public bool getData(string rd)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(rd, con);
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
        public DataSet showData(string view)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(view, con);
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
    }
    
}