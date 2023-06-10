package com.example.wypozyczalniadvd;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Film {
    private int id;
    private String nazwa;
    private int ocena;
}
