package com.util;

import com.dao.UsersDao;
import com.po.Users;

/**
 * Created by qiuje on 2017/6/19.
 */
public class test {
    public static void main(String[] args) {
        UsersDao me = new UsersDao();
        Users jee = new Users();
        jee.setUsername("adminmnopoppo");
        jee.setPassword("cccc4545");
        jee.setPhonenumber("88888888");
        String info= me.usersCreate(jee);
        System.out.println(info);

    }
}
