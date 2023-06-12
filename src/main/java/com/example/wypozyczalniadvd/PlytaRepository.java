package com.example.wypozyczalniadvd;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
//import org.springframework.test.context.jdbc.Sql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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
        List<Plyta> plyty = jdbcTemplate.query("SELECT ID_PLYTA, TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE FROM PLYTA", new MyRowMapper());

        return plyty;
    }

    private class MyRowMapper implements RowMapper<Plyta> {
        @Override
        public Plyta mapRow(ResultSet rs, int rowNum) throws SQLException {
            Plyta bean = new Plyta();
            bean.setId_plyta(rs.getInt("id_plyta"));
            bean.setTytul(rs.getString("tytul"));
            bean.setGatunek(rs.getString("gatunek"));
            bean.setRezyser(rs.getString("rezyser"));

            java.sql.Date sqlDate = rs.getDate("rok_wydania");

            // Konwersja na LocalDateTime
            LocalDateTime localDateTime = null;
            if (sqlDate != null) {
                localDateTime = sqlDate.toLocalDate().atStartOfDay();
            }

/*            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            Date dataStr = rs.getDate("rok_wydania");
            LocalDateTime data = LocalDateTime.of(dataStr.getYear(), dataStr.getMonth(), dataStr.getDay(), 0, 0, 0);*/
            bean.setRok_wydania(localDateTime);

            // Parse decimal value to float
            float price = rs.getFloat("cena_za_wypozyczenie");
            bean.setCena(price);

            return bean;
        }
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

