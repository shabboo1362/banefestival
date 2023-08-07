using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace importexport1
{
	/// <summary>
	/// Summary description for Connection.
	/// </summary>
	public class codebehind
	{
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
		private string str;
		private SqlCommand select;
		private SqlDataAdapter dataadapter;
		private SqlDataReader datareader;
		public void sendMail(String fromAccount, String toAccount,
			String title, String msg,
			System.Web.Mail.MailAttachment attachment)
		{
			System.Web.Mail.MailMessage mm = new
				System.Web.Mail.MailMessage();
			mm.To = toAccount;
			mm.From = fromAccount;
			mm.Subject = title;
			mm.Body = msg;
			mm.BodyFormat = System.Web.Mail.MailFormat.Html;
			if (attachment != null) 
			{
				mm.Attachments.Add(attachment);
			}
			System.Web.Mail.SmtpMail.Send(mm);
		}
		public void update(string tabelname,string field,string ceriteria){
			str="UPDATE "+tabelname+" SET "+field+" WHERE "+ceriteria+";"; 
			SqlCommand updatecommand=new SqlCommand(str,connection);
			try
			{
				connection.Open();
				updatecommand.ExecuteNonQuery();
			}
			finally
			{
				connection.Close();
			}
  
		}

		public void get_alluser(DataSet dataset,System.DateTime constraint)
		{
			str="(select * from Buyer WHERE RegistrationDate>'"+constraint+"') union (select * from Supplier where LoginID not in(select LoginID from Buyer) and RegistrationDate>'"+constraint+"')";
			select=new SqlCommand(str,connection);
			SqlDataAdapter dataadapter=new SqlDataAdapter();
			dataadapter.SelectCommand=select;
			try
			{
				connection.Open();
				select.ExecuteNonQuery();
				dataadapter.Fill(dataset);
			}
			finally
			{
				connection.Close();
			}
		
		}
		public int get_accssuser(string constraint)
		{
			string str="SELECT Accessuser FROM Login WHERE "+constraint+";";
			int Accessuser=0;
			select=new SqlCommand(str,connection);
			try
			{
				connection.Open();
				datareader=select.ExecuteReader();
				while(datareader.Read())
					Accessuser=int.Parse(datareader.GetValue(0).ToString());
			}
			finally
			{
				connection.Close();
			}
			return Accessuser;
		}
		public void get_product_info(string field,string table,string order,DataSet dataset)
		{
			str="SELECT "+field+" FROM "+table+" WHERE ProductID IS NOT NULL ORDER BY "+order+" DESC;";
			select=new SqlCommand(str,connection);
			SqlDataAdapter dataadapter=new SqlDataAdapter();
			dataadapter.SelectCommand=select;
			try
			{
				connection.Open();
				select.ExecuteNonQuery();
				dataadapter.Fill(dataset);
			}
			finally
			{
				connection.Close();
			}
		}
		public void delete(string table,string constraint)
		{
			str="DELETE FROM "+table+" WHERE "+constraint+";";
			SqlCommand delete=new SqlCommand(str,connection);
			try
			{
				connection.Open();
				delete.ExecuteNonQuery();
			}
			finally
			{
				connection.Close();
			}
		}
		public void add(string tabelname,string field,string values){
			str="INSERT INTO "+tabelname+" ("+field+")VALUES ("+values+");";
			SqlCommand insertcommand=new SqlCommand(str,connection);
			try
			{
				connection.Open();
				insertcommand.ExecuteNonQuery();
			}
			finally
			{
				connection.Close();
			}
		}
		public int insert(string tabelname,string field,string values)
		{
			str="SELECT MAX("+tabelname+"ID) FROM "+tabelname+";";
			string ID="";
			
			SqlCommand selectcommand=new SqlCommand(str,connection);
			try{
			connection.Open();
			datareader=selectcommand.ExecuteReader();
			while(datareader.Read())
				ID=datareader.GetValue(0).ToString();
			
			}
			finally
			{
				datareader.Close();
				connection.Close();
			}
			int id=int.Parse(ID);
			id+=1;
			str="INSERT INTO "+tabelname+" ("+tabelname+"ID,"+field+")VALUES ("+id+","+values+");";
			SqlCommand insertcommand=new SqlCommand(str,connection);
			try
			{
			connection.Open();
			insertcommand.ExecuteNonQuery();
			}
			finally
			{
				connection.Close();
			}
			return id;

		}
		
		public SqlDataReader get_UserInfo(string field,string table,string constraint)
		{
			string str="SELECT "+field+" FROM "+table+" WHERE "+constraint+";";
			select=new SqlCommand(str,connection);
			connection.Open();
			return select.ExecuteReader(CommandBehavior.CloseConnection);
		}
		public int get_ID(string ID,string table,string constraint)
		{
			string str="SELECT "+ID+" FROM "+table+" WHERE "+constraint+";";
			select=new SqlCommand(str,connection);
			int id=0;
			try
			{
				connection.Open();
				datareader=select.ExecuteReader();
				if(datareader.Read())
				{
					id=int.Parse(datareader.GetValue(0).ToString());
				}
			}
			finally
			{
				connection.Close();
			}
			return id;
			
		}
		public void get_Info(string field,string table,string constraint,DataSet dataset )
		{
			string str="SELECT "+field+" FROM "+table+" WHERE "+constraint+";";
			select=new SqlCommand(str,connection);
			dataadapter=new SqlDataAdapter();
			try
			{
				connection.Open();
				dataadapter.SelectCommand=select;
				select.ExecuteNonQuery();
				dataadapter.Fill(dataset,"product");
			}
			finally
			{
				connection.Close();
			}
		
		}
		public void add_newuser(string fromtable,string totable,int loginid)
		{
			       datareader=get_UserInfo("*",fromtable,"LoginID='"+loginid+"'");
					string fname="";
					string lname="";
					string addr="";
					string tel="";
					string email="";
					string city="";
					string state="";
					string postalcode="";
					string country="";
					int manid=0;
			try
			{
				if(datareader.Read())
				{
					fname=datareader.GetValue(1).ToString();
					lname=datareader.GetValue(2).ToString();
					addr=datareader.GetValue(3).ToString();
					tel=datareader.GetValue(4).ToString();
					email=datareader.GetValue(5).ToString();
					city=datareader.GetValue(6).ToString();
					state=datareader.GetValue(7).ToString();
					postalcode=datareader.GetValue(8).ToString();
					country=datareader.GetValue(10).ToString();
					manid=int.Parse(datareader.GetValue(11).ToString());
				}
			}
			finally
			{
				datareader.Close();
			}
					
					insert(totable,"FirstName,LastName,Address,Tel,Email,City,State,PostalCode,RegistrationDate,Country,ManufactureID,LoginID","'"+fname+"','"+lname+"','"+addr+"','"+tel+"','"+email+"','"+city+"','"+state+"','"+postalcode+"','"+System.DateTime.Today.Date+"','"+country+"','"+manid+"','"+loginid+"'");
					update("Login","Accessuser='"+2+"'","LoginID='"+loginid+"'");
					
		
		}
		public codebehind()
		{
		
	}
}
}
