package com.example.wypozyczalniadvd;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Plyta {
    private int id_plyta;
    private String tytul;
    private String rezyser;
    private LocalDateTime rok_wydania;
    private String gatunek;
    private float cena;
}
