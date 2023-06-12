package com.example.wypozyczalniadvd;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Plyta {
    private int id_plyta;
    private String tytul;
    private String rezyser;
    private String rok_wydania;
    private String gatunek;
    private double cena;
}
