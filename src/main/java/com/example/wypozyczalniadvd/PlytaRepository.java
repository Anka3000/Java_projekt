package com.example.wypozyczalniadvd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
//import org.springframework.test.context.jdbc.Sql;

import java.util.List;

@Repository
public class PlytaRepository {
    
    @Autowired
    JdbcTemplate jdbcTemplate;
/*
    public int save(List<Film> filmy) {
        filmy.forEach(film -> jdbcTemplate.update("INSERT INTO film (nazwa, ocena) VALUES(? , ?)",
                film.getNazwa(), film.getOcena()
        ));
        return 1;
    }

    public Film getById(int id) {
        return jdbcTemplate.queryForObject("select id, nazwa,ocena from film WHERE" + "id = ?",
                BeanPropertyRowMapper.newInstance(Film.class), id);
    }
*/
    public List<Plyta> getAll(){
        return jdbcTemplate.query("SELECT ID_PLYTA, TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE FROM PLYTA", BeanPropertyRowMapper.newInstance(Plyta.class));
    }
    /*
    public int update(Film film){
        return jdbcTemplate.update("UPDATE film SET nazwa = ? ocena = ? WHERE id = ?",
                film.getNazwa(), film.getOcena(), film.getId());
    }
    public int delete(int id){
        return jdbcTemplate.update("DELETE FROM film WHERE id = ?", id);
    }
     */
}

