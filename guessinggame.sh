#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire actuel
file_count=$(get_file_count)

# Boucle principale pour deviner le nombre
while true; do
    echo "Devinez le nombre de fichiers dans le répertoire actuel :"
    read user_guess

    # Vérification de l'entrée
    if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    if [[ $user_guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $user_guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné le bon nombre."
        break
    fi
done
chmod +x guessinggame.sh.
