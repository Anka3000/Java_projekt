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
    @GetMapping("filmy/{id}")
    public Film getById(@PathVariable("id") int id){
        return filmRepository.getById(id);
    }

    //Dodawanie filmów do bazy
    @PostMapping("/filmy")
    public int add(@RequestBody List<Film> filmy){
        return filmRepository.save(filmy);
    }
    //Edytcja pojedynczego filmu
    @PutMapping("filmy/{id}")
    public int update(@PathVariable("id") int id, @RequestBody Film updatedFilm){
        Film film =filmRepository.getById(id);
        if(film != null){
            film.setNazwa(updatedFilm.getNazwa());
            film.setOcena(updatedFilm.getOcena());

            filmRepository.update(film);
            return 1;
        }else {
            return -1;
        }
    }
    @PatchMapping("filmy/{id}")
    public int partiallyUpdate(@PathVariable("id") int id, @RequestBody Film updatedFilm) {
        Film film = filmRepository.getById(id);
        if (film != null) {
            if(updatedFilm.getNazwa() != null) film.setNazwa(updatedFilm.getNazwa());
            if(updatedFilm.getOcena() >0 ) film.setOcena(updatedFilm.getOcena());

            filmRepository.update(film);
            return 1;
        }
        else {
            return -1;
        }
    }
    //Usuwanie filmu po id
    @DeleteMapping("filmy/{id}")
    public int delete (@PathVariable("id") int id){
        return filmRepository.delete(id);
    }

}