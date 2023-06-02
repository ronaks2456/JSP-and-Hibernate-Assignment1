package com.dxc.dao;
import com.dxc.*;
import java.util.List;

import com.dxc.model.Employee;

public interface EmployeeDao {
	public int saveEmployee(String firstName, String lastName, int salary);
	public List<Employee> getAllEmployee();
	public void updateEmployee(int id, int salary);
	public void deleteEmployee(int id);

}
