package ru.urvanov.employeelist.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.urvanov.employeelist.domain.EmployeePosition;

@RequestMapping("/employeepositions")
@Controller
@RooWebScaffold(path = "employeepositions", formBackingObject = EmployeePosition.class)
public class EmployeePositionController {
}
