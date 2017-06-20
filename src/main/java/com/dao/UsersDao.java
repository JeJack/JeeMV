package com.dao;


import com.po.Users;
import com.util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by qiuje on 2017/6/14.
 */
public class UsersDao {
    //用户登陆方法
    public  boolean usersLogin(Users u)
    {
        if (u.getUsername()!=null && u.getPassword()!=null){

            if (null!=getUsersByName(u.getUsername())){
                if (u.getPassword().equals(getUsersByName(u.getUsername()).getPassword()))
                {
                    return true;
                }
            }
        }
        return false;

    }
    public String usersCreate(Users u){//判断传过来的用户信息，是否创建用户
        if (null==u.getUsername()||u.getUsername().length()<=0||
                null==u.getPassword()|| u.getPassword().length()<=0||
                null==u.getPhonenumber()||u.getPhonenumber().length()<=0) {
            return "dd";//"有必填字段为空，请检查";
        }
        else {
            Users check = getUsersByName(u.getUsername());
//            check=null;
            if (check==null){
                if (createUserSql(u)){
                    return "success";// "注册成功，请登录";
                }else {
                    return "cc";//"注册失败，请重试";
                }
            }//check
            else{
                return "rename";  //"用户名已存在，请重新输入一个用户名";
            }
        }

    }
    public void main(String[] args) {
        Users jee = new Users();
        jee.setUsername("ccc");
        jee.setPassword("cccc");
        jee.setPhonenumber("88888888");
        String info= usersCreate(jee);
        System.out.println(info);

    }

    public Users getUsersByName(String username) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Users user=new Users();//users 表的主键
//        ArrayList<Users> userlist = new ArrayList<Users>();
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from users where username=?;"; // SQL语句
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,username);
            rs = stmt.executeQuery();
            if (rs.next()) {
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhonenumber(rs.getString("phonenumber"));
//                userlist.add(user);
//                return user;
            }
            else{
                user=null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            // 释放数据集对象
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            // 释放语句对象
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        if (user!=null){
            return user;
        }else{
            return null;
        }
    }
    public boolean createUserSql(Users u){
        //将用户信息插入数据库
        boolean flag=false;
        Connection conn = null;
        PreparedStatement stmt = null;
        try{
            conn = DBHelper.getConnection();
            String sql="insert into users(username,password,phonenumber) values(?,?,?)";
            stmt = conn.prepareStatement(sql);//可以替换变量
            stmt.setString(1,u.getUsername());//可以把?替换成变量。
            stmt.setString(2,u.getPassword());
            stmt.setString(3,u.getPhonenumber());
            if(!stmt.execute()){
                flag=true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally {
            if (stmt != null) {//释放语句对象
                try {
                    stmt.close();
                    stmt = null;
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        return flag;

    }
}
