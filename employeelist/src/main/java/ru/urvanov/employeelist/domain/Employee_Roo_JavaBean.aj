// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ru.urvanov.employeelist.domain;

import ru.urvanov.employeelist.domain.Department;
import ru.urvanov.employeelist.domain.Employee;
import ru.urvanov.employeelist.domain.EmployeePosition;

privileged aspect Employee_Roo_JavaBean{

public String Employee.getSurname(){return this.surname;}

public void Employee.setSurname(String surname){this.surname=surname;}

public String Employee.getName(){return this.name;}

public void Employee.setName(String name){this.name=name;}

public String Employee.getPatronymic(){return this.patronymic;}

public void Employee.setPatronymic(String patronymic){this.patronymic=patronymic;}

public Department Employee.getDepartment(){return this.department;}

public void Employee.setDepartment(Department department){this.department=department;}

public EmployeePosition Employee.getEmployeePosition(){return this.employeePosition;}

public void Employee.setEmployeePosition(EmployeePosition employeePosition){this.employeePosition=employeePosition;}

}
