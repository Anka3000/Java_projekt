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

    public Plyta getById(int id_plyta) {
        return jdbcTemplate.queryForObject("SELECT ID_PLYTA, TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE FROM PLYTA WHERE " + "id_plyta = ?",
                BeanPropertyRowMapper.newInstance(Plyta.class), id_plyta);
    }
    public List<Plyta> getAll(){
        return jdbcTemplate.query("SELECT ID_PLYTA, TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE FROM PLYTA", BeanPropertyRowMapper.newInstance(Plyta.class));
    }
    public int save(List<Plyta> plyty) {
        plyty.forEach(plyta-> jdbcTemplate.update("INSERT INTO PLYTA (TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE) VALUES (?, ?, ?, ?, ?)",
                plyta.getTytul(), plyta.getRezyser(), plyta.getRok_wydania(), plyta.getGatunek(), plyta.getCena()
        ));
        System.out.println(plyty);
        return 1;
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

