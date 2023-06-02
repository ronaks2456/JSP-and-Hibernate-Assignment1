package com.dxc.client;

import java.util.*;

import com.dxc.dao.*;
import com.dxc.model.Employee;

public class ClientDemo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Employee Management System");
		System.out.println("1.Save Employee");
		System.out.println("2.Get All Employee");
		System.out.println("3.Update Employee");
		System.out.println("4.Delete Employee");
		System.out.println("5.Exit");
		System.out.println("Enter your choice(1-5):");
		EmployeeDao dao = new EmployeeDaoImpl();
		int i = sc.nextInt();
			switch (i) 
			{
			case 1:
				int emp1 = dao.saveEmployee("Shahid", "Sikhar", 20000);
				int emp2 = dao.saveEmployee("Ravi", "Javi", 23000);
				int emp3 = dao.saveEmployee("Manoj", "Dhira", 32000);
				int emp4 = dao.saveEmployee("Durga", "Prasad", 21000);
				int emp5 = dao.saveEmployee("Maetree", "Laurent", 29000);
				break;
			case 2:
				List<Employee> employees = dao.getAllEmployee();
				for (Employee s : employees) {
					System.out.println(s);
				}
				break;
			case 3:
				int j = sc.nextInt();
				int k = sc.nextInt();
				dao.updateEmployee(j, k);
				break;
			case 4:
				int some = sc.nextInt();
				dao.deleteEmployee(some);
				break;
			case 5:
				System.out.println("Exit");
				break;
			default:
				System.out.print("Invalid choice");
			}

	}

}
