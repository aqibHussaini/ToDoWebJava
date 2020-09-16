/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Pojo;

import java.sql.Timestamp;


/**
 *
 * @author Bhatti
 */
public class TOdoPojo {

    private int id;
 private String name,description,status;
 private Timestamp date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public TOdoPojo() {
    }

    public TOdoPojo(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public TOdoPojo(int id, String name, String description, String status, Timestamp date) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.status = status;
        this.date = date;
    }

    @Override
    public String toString() {
        return "TOdoPojo{" + "id=" + id + ", name=" + name + ", description=" + description + ", status=" + status + ", date=" + date + '}';
    }

    
}
