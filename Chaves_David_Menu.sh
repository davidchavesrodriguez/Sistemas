# !/bin/bash

function fEscaner() {
    echo "ESCANEO DE CARPETA HOME"

    sleep 2

    for file in $HOME/*

    # Pedimos que recorra os arquivos nesa ruta

    do

        if [ -d $file ]
        then
            echo
            echo "#DIRECTORIO# $file"

        elif [ -f $file ]
        then
            echo
            echo "*FICHEIRO* $file"
        fi
    done
    echo

}

function fComparador(){
    echo
    echo "COMPARADOR DE NÚMEROS"
    echo
    sleep 2

    read -p "Dinos un número: " x
    echo
    read -p "Dinos outro, lo: " y
    # Pedimos dous valores por teclado que se chamarán x e y respectivamente

    if [ $x -eq $y ]
    then
        echo
        echo "Non tes moita imaxinación, eh?"
        echo

    else
        echo
        echo "Moi ben, son números distintos"
        echo
    fi
}

function fPaz () {
    echo
    echo "Entendido, haberá paz"
    sleep 3

    echo
    echo '_____________$$$___________________1$$_'
    echo '_1$__________$$$___________________$$$1_________$1'
    echo '_$$$_______$$$$$$_________________1$$$$$1______$$$'
    echo '_$$$$______$$$$$$$_______________1$$$$$$1_____$$$$'
    echo '_$$$$$____1$$$$$$$$_____________$$$$$$$$$____$$$$$'
    echo '$$$$$$$1__$$$$$$$$$$___________$$$$$$$$$$__1$$$$$$'
    echo '$$$$$$$$$1$$$$$$$$$$1_________1$$$$$$$$$$1$$$$$$$$'
    echo '11$$$$$$$$$$$$$$$$$$$_________1$$$$$$$$$$$$$$$$$$1'
    echo '11$$$$$$$$$$$$$$$$$$1_________1$$$$$$$$$$$$$$$$$$1'
    echo '_11$$$$$$$$$$$$$$$$$___________$$$$$$$$$$$$$$$$$$'
    echo '__1$$$$$$$$$$$$$$$$$1$$$$__.$$$1$$$$$$$$$$$$$$$$'
    echo '___1$$$$$$$$$$$$$$$$$$$$$♥$$$$$$$$$$$$$$$$$$$$$1'
    echo '____1$$$$$$$$$$$$$$$$$$1___1$$$$$$$$$$$$$$$$$$1'
    echo '_____111$$$$$$$$$$$$$$_______$$$$$$$$$$$$$$$$'
    echo '______11_1$$$$$$$$$$$$_______$$$$$$$$$$$$$11'
    echo '________11_1$$$$$$$$$$_______1$$$$$$$$$$11'
    echo '_________11$$$$$$$$$$_________$$$$$$$$$$$1'
    echo '_1$$$$$$$$$$$$$$$$$$___________1$$$$$$$$$$$$$$$$$1'
    echo '__$$$$$$$$$$$$$$$11______________1$$$$$$$$$$$$$$$'
    echo '__1$$$$$$$$$___________________________$$$$$$$$$1'
    echo '____1$$$$$$1___________________________1$$$$$$1'
    echo '_______1$$$_____________________________1$$1'
    echo '_________$_______________________________$'
}

function fInformacion () {

    echo "CONSULTA INFORMACIÓN DO EQUIPO"
    echo
    read -p "Sobre que queres buscar? " valor
    echo
    echo "Aquí tes: "
    lscpu | grep -i "$valor"
    # Busca información do equipo filtrando o texto introducido	
}

function fNotas() {
	echo
	echo "NOTAS RÁPIDAS"
	echo
	read -p "Como queres chamar á nota? " nomeNota
	if [ -e Notas ]
	then
		echo
	else
		mkdir Notas
	fi
	# Crea a carpeta Notas se non existe

	if [ -e Notas/$nomeNota.txt ]
	then
		echo "Ese nome xa o puxeches :("
		echo
		echo "Agora mesmo tes as seguintes notas gardadas "
		echo
		ls Notas
	else
		touch Notas/$nomeNota.txt
		read -p "Escríbeme a tua idea: " contido
		echo $contido > Notas/$nomeNota.txt
		echo
		echo " Todo listo! Agora mesmo tes as seguintes notas gardadas: "
		echo
		ls Notas
		echo
	fi
	# Crea a nota co nome e contido requerido. Se a nota xa existe, quéixase

}

sair=1
# Creamos unha variable pra sair do bucle

while (( sair != 0 ))

do
        clear
        echo "Que desexas facer?"
        echo
        echo "1- Escanear carpeta Home"
        echo
        echo "2- Comparar dous números"
        echo
        echo "3- Eu solo quero paz"
        echo
        echo "4- Dame información sobre o meu equipo"
        echo
        echo "5- Ocurréuseme algo. Déixame apuntalo!"
        echo
        read -p "Escolle o número da opción requerida: " opcion
        echo

        case $opcion in
                1)
                fEscaner
                ;;

                2)
                fComparador
                ;;

                3)
                fPaz
                ;;

        	4)
       		fInformacion
        	;;

        	5)
	        fNotas
	        ;;

	        *)

		echo "Non escolleches unha opción válida :( "

                esac

        echo

        read -p "Queres volver para facer algo? (0 para sair): " sair

        clear

	echo
        echo "Moitas grazas por usar o meu menú :)"
	echo
done

 
