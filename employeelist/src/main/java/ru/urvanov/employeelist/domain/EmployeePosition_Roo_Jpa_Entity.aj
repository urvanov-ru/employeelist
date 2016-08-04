// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ru.urvanov.employeelist.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;
import ru.urvanov.employeelist.domain.EmployeePosition;

privileged aspect EmployeePosition_Roo_Jpa_Entity {
    
    declare @type: EmployeePosition: @Entity;
    
    declare @type: EmployeePosition: @Table(name = "employee_position");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long EmployeePosition.id;
    
    @Version
    @Column(name = "version")
    private Integer EmployeePosition.version;
    
    public Long EmployeePosition.getId() {
        return this.id;
    }
    
    public void EmployeePosition.setId(Long id) {
        this.id = id;
    }
    
    public Integer EmployeePosition.getVersion() {
        return this.version;
    }
    
    public void EmployeePosition.setVersion(Integer version) {
        this.version = version;
    }
    
}
