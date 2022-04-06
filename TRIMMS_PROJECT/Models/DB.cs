using Microsoft.Data.SqlClient;
using System.Data;

namespace TRIMMS_PROJECT.Models
{
    public class DB
    {
        SqlConnection db = new SqlConnection("Data Source=SRINIVAS_ROY\\SQLEXPRESS;Initial Catalog=TRIMMS;Integrated Security=True;");


        //Post-Update
        public string EmployeeOpt(Employee emp)
        {
            string msg = string.Empty;
            try
            {
                SqlCommand com = new SqlCommand("SP_INSERT_EMP", db);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Emp_ID", emp.Emp_ID);
                com.Parameters.AddWithValue("@Emp_Name", emp.Emp_Name);
                com.Parameters.AddWithValue("@DOB", emp.DOB);
                com.Parameters.AddWithValue("@Gender", emp.Gender);
                com.Parameters.AddWithValue("@Email_ID", emp.Email_ID);
                com.Parameters.AddWithValue("@Contact_Number", emp.Contact_Number);
                com.Parameters.AddWithValue("@Address", emp.Address);
                com.Parameters.AddWithValue("@State_Name", emp.State_Name);
                com.Parameters.AddWithValue("@Country_ID", emp.Country_ID);
                com.Parameters.AddWithValue("@PinCode", emp.PinCode);
                com.Parameters.AddWithValue("@Emp_Type", emp.Emp_Type);
                com.Parameters.AddWithValue("@Department", emp.Department);
                com.Parameters.AddWithValue("@Designation", emp.Designation);
                com.Parameters.AddWithValue("@DOJ", emp.DOJ);
                com.Parameters.AddWithValue("@Level", emp.Level);
                com.Parameters.AddWithValue("@Band", emp.Band);
                com.Parameters.AddWithValue("@Reporting_Manager", emp.Reporting_Manager);
                com.Parameters.AddWithValue("@Location", emp.Location);
                com.Parameters.AddWithValue("@WorkEXPDOJ", emp.WorkEXPDOJ);
               

                db.Open();
                com.ExecuteNonQuery();
                db.Close();
                msg = "Success";
            }
            catch (Exception ex)
            {
                msg = ex.Message;

            }
            finally
            {
                if (db.State == ConnectionState.Open)
                {
                    db.Close();
                }


            }
            return msg;
        }

        ////GET
        //public DataSet EmployeeGet(Employee emp, out string msg)
        //{
        //    msg = string.Empty;
        //    DataSet ds = new DataSet();
        //    try
        //    {
        //        SqlCommand com = new SqlCommand("SP_INSERT_EMP", db);
        //        com.CommandType = CommandType.StoredProcedure;

        //        com.Parameters.AddWithValue("@Email_ID", emp.Email_ID);
              



        //        SqlDataAdapter da = new SqlDataAdapter(com);
        //        da.Fill(ds);

        //        msg = "Success";
        //    }
        //    catch (Exception ex)
        //    {
        //        msg = ex.Message;

        //    }

        //    return ds;
        //}





    //    public DataSet EmployeeGetAllEmp()
    //    {
    //        String msg = string.Empty;
    //        DataSet ds = new DataSet();
    //        try
    //        {
    //            SqlCommand com = new SqlCommand("SP_INSERT_EMP", db);
    //            com.CommandType = CommandType.StoredProcedure;




    //            SqlDataAdapter da = new SqlDataAdapter(com);
    //            da.Fill(ds);

    //            msg = "Success";
    //        }
    //        catch (Exception ex)
    //        {
    //            msg = ex.Message;

    //        }

    //        return ds;
    //    }
    }

}



