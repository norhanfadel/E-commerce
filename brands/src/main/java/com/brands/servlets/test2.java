package com.brands.servlets;

import com.brands.dao.Orders;
import com.brands.dao.Users;
import com.brands.dto.MySessionFactory;
import com.brands.dto.OrdersImp;
import com.brands.dto.UserImp;
import org.hibernate.Session;

import java.util.Set;

public class test2 {
    public static void main(String[] args) {
        UserImp userImp = new UserImp();
        OrdersImp orderImp = new OrdersImp();
        System.out.println(orderImp.updateQuantityByProductId(4,9,1));

    }
}
