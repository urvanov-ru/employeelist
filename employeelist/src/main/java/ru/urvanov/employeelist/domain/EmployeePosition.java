package ru.urvanov.employeelist.domain;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "employee_position")
public class EmployeePosition {

    /**
     */
    @NotNull
    @Size(min = 1, max = 100)
    private String descr;
}
