package com.example.wypozyczalniadvd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WypozyczalniaDvdController {

    @Autowired
    FilmRepository filmRepository;

    @GetMapping("/test")
    public int test(){
        return 69;
    }
    @GetMapping("/filmy")
    public List<Film> getAll(){
        return filmRepository.getAll();
    }
}