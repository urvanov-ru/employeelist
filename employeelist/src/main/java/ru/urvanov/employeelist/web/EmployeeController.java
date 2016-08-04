package ru.urvanov.employeelist.web;

import java.util.List;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ru.urvanov.employeelist.domain.Employee;

@RequestMapping("/employees")
@Controller
@RooWebScaffold(path = "employees", formBackingObject = Employee.class)
public class EmployeeController {

    @RequestMapping("listJson")
    public @ResponseBody List<Employee> listJson() {
        List<Employee> employees = Employee.findAllEmployees();
        return employees;
    }

    @RequestMapping("infoJson/{id}")
    public @ResponseBody Employee infoJson(@PathVariable("id") Long id) {
        return Employee.findEmployee(id);
    }

}
