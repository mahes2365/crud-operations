using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using crud;
public partial class home : System.Web.UI.Page
{
    string empid;
    string empname;
    string sex;
    string age;
    string designation;
    string doj;
    query obj = new query();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbtmale_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtmale.Text;
    }

    protected void rbtfemale_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtmale.Text;
    }

    protected void rbtothers_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtmale.Text;
    }
    protected void btsubmit_Click(object sender, EventArgs e)
    {
        empid = txtbxempid.Text;
        empname = txtbxempname.Text;
        age = txtbxempage.Text;
        designation = txtbxempdesign.Text;
        doj = txtbxempdoj.Text;
        bool value = obj.getData("select * from temp_emp_data where emp_id='" + empid + "'");
      
            if (value)
            {
                Response.Write("<script>alert('The Employee ID already Exist')</script>");
                txtbxempname.Text = "";
                txtbxempid.Text = "";
                txtbxempdesign.Text = "";
                txtbxempdoj.Text = "";
                txtbxempage.Text = "";
                rbtfemale.Checked = false;
                rbtmale.Checked = false;
                rbtothers.Checked = false;
            }
            else
            {
                obj.DML("insert into temp_emp_data values('" + empid + "','" + empname + "','" + sex + "'," + age + ",'" + designation + "','" + doj + "')");
                Response.Write("<script>alert('The Employee Data Inserted Successfully')</script>");
                txtbxempname.Text = "";
                txtbxempid.Text = "";
                txtbxempdesign.Text = "";
                txtbxempdoj.Text = "";
                txtbxempage.Text = "";
                rbtfemale.Checked = false;
                rbtmale.Checked = false;
                rbtothers.Checked = false;
            }
    }




    protected void btselect_Click(object sender, EventArgs e)
    {
        empid = txtbxempid2.Text;
        bool value = obj.getData("select * from temp_emp_data where emp_id='" + empid + "'");
        if (value)
        {
            DataSet ds = obj.showData("select * from temp_emp_data where emp_id='" + empid + "'");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            lblselectmsg1.Text = "The record shown below";
        }
        else
        {
            
            lblselectmsg1.Text = "There is no record in this ID";
            txtbxempid2.Text = "";
        }
        
    }

    protected void btselectall_Click(object sender, EventArgs e)
    {
        DataSet ds = obj.showData("select * from temp_emp_data");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void btdelete_Click(object sender, EventArgs e)
    {
        empid = txtbxempid5.Text;
        bool value = obj.getData("select * from temp_emp_data where emp_id='" + empid + "'");
        if (value)
        {
            obj.DML("delete from temp_emp_data where emp_id='" + empid + "'");
            txtbxempid5.Text = "";
            lbldeletemsg.Text="The Employee Data Deleted Successfully";
        }
        else
        {
            txtbxempid5.Text = "";
            lbldeletemsg.Text = "There is no record in this ID";
        }
    }
}