package ru.urvanov.employeelist.domain;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "employee")
public class Employee {

    /**
     */
    @Size(max = 100)
    private String surname;

    /**
     */
    @Size(max = 100)
    private String name;

    /**
     */
    @Size(max = 100)
    private String patronymic;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "department_id")
    private Department department;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "employee_position_id")
    private EmployeePosition employeePosition;
}
