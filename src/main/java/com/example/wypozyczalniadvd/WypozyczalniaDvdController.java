package com.example.wypozyczalniadvd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class WypozyczalniaDvdController {

    @Autowired
    FilmRepository filmRepository;

    //Wyświetlanie całego katalogu
    @GetMapping("/filmy")
    public List<Film> getAll(){
        return filmRepository.getAll();
    }

    //Wyświetlanie filmu po konkretnym id
    /*
    @GetMapping("/{id}")
    public Film getById(@PathVariable("id") int id){
        return FilmRepository.getById(id);
    }
     */
    @PostMapping("/filmy")
    public int add(@RequestBody List<Film> filmy){
        return FilmRepository.save(filmy);
    }

}