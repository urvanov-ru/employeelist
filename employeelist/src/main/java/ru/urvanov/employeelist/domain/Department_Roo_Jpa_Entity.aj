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
import ru.urvanov.employeelist.domain.Department;

privileged aspect Department_Roo_Jpa_Entity {
    
    declare @type: Department: @Entity;
    
    declare @type: Department: @Table(name = "department");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Department.id;
    
    @Version
    @Column(name = "version")
    private Integer Department.version;
    
    public Long Department.getId() {
        return this.id;
    }
    
    public void Department.setId(Long id) {
        this.id = id;
    }
    
    public Integer Department.getVersion() {
        return this.version;
    }
    
    public void Department.setVersion(Integer version) {
        this.version = version;
    }
    
}
