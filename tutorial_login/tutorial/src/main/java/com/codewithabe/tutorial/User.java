package com.codewithabe.tutorial;

import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue
    int id;
    String email;
    String password;

    
}
