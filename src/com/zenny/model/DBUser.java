package com.zenny.model;

import java.sql.ResultSet;

public class DBUser
{
	DAL dal;
	public DBUser()
	{
		dal = new DAL();
	}
	public ResultSet getlsuser()
	{
		return dal.getData("select * from dangnhap");
		//return null;
	}

}
