package com.dxc.dao;

import java.util.List;

import org.hibernate.Session;

import com.dxc.model.Employee;
import com.dxc.util.HibernateUtil;

public class EmployeeDaoImpl implements EmployeeDao {

	public int saveEmployee(String firstName, String lastName, int salary) {
		Employee employee = new Employee();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setSalary(salary);

		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();
		int id = (Integer) session.save(employee);
		session.getTransaction().commit();
		session.close();

		return id;
	}

	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();

		@SuppressWarnings("unchecked")
		List<Employee> stus = (List<Employee>) session.createQuery("FROM Employee e ORDER BY e.firstName ASC").list();

		session.getTransaction().commit();
		session.close();

		return stus;
	}

	public void updateEmployee(int id, int salary) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();
		Employee employee = (Employee) session.get(Employee.class, id);
		employee.setSalary(salary);
		// session.update(student);//no need to call update manually as it will be
		// updated automatically on transaction close
		session.getTransaction().commit();
		session.close();

	}

	public void deleteEmployee(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();
		Employee employee= (Employee) session.get(Employee.class, id);
		session.delete(employee);
		session.getTransaction().commit();
		session.close();

	}

}
