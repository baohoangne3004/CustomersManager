/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author HoangKM
 */
public class CustomersDAO extends BaseDAO {
    
    private List<Customer> getCustomersBySqlScript(String select, Object [] paras) {
        List<Customer> result = new ArrayList<>();
        try {
            PreparedStatement stm = connection.prepareStatement(select);
            for (int i = 1; i <= paras.length; i++) {
                Object para = paras[i - 1];
                stm.setObject(i, para);
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("Id");
                String name = rs.getString("Name");
                int age = rs.getInt("Age");
                String address = rs.getString("Address");
                result.add(new Customer(id, name, age, address));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public List<Customer> search(String searchData) {
        String script = "SELECT [Id]\n"
                + ",[Name]\n"
                + ",[Age]\n"
                + ",[Address]\n"
                + "FROM[dbo].[Customers]\n"
                + "WHERE [Name] LIKE CONCAT('%',?,'%')";
        ArrayList<String> paras = new ArrayList<>();
        paras.add(searchData);
        return getCustomersBySqlScript(script, paras.toArray());
    }
}
