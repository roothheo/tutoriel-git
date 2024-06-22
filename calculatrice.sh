#!/bin/bash

# Fonction pour effectuer une addition
function addition() {
    echo "Résultat de l'addition : $(($1 + $2))"
}

# Fonction pour effectuer une soustraction
function soustraction() {
    echo "Résultat de la soustraction : $(($1 - $2))"
}

# Fonction pour effectuer une multiplication
function multiplication() {
    echo "Résultat de la multiplication : $(($1 * $2))"
}

# Fonction pour effectuer une division
function division() {
    echo "Résultat de la division : $(($1 / $2))"
}

# Demande à l'utilisateur de choisir une opération
echo "Choisissez une opération :"
echo "1. Addition"
echo "2. Soustraction"
echo "3. Multiplication"
echo "4. Division"
read choix

# Demande à l'utilisateur de saisir deux nombres
echo "Saisissez le premier nombre :"
read nombre1
echo "Saisissez le deuxième nombre :"
read nombre2

# Effectue l'opération choisie en fonction du choix de l'utilisateur
case $choix in
    1)
        addition $nombre1 $nombre2
        ;;
    2)
        soustraction $nombre1 $nombre2
        ;;
    3)
        multiplication $nombre1 $nombre2
        ;;
    4)
        division $nombre1 $nombre2
        ;;
    *)
        echo "Choix invalide"
        ;;
esac