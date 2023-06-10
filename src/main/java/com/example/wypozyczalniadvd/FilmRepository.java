package com.example.wypozyczalniadvd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
//import org.springframework.test.context.jdbc.Sql;

import java.util.List;

@Repository
public class FilmRepository {
    
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Film> getAll(){
        return jdbcTemplate.query("select id, nazwa,ocena from film", BeanPropertyRowMapper.newInstance(Film.class));
    }
}
