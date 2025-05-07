#!/bin/bash

read -p "Unesite ime i prezime: " ime prezime
read -p "Unesite šifru: " -s sifra

echo "Pozdrav $ime $prezime, vaša šifra je: $sifra"