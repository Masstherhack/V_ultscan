#!bin/bash

clear






setterm -foreground cyan
echo "  _________  ___________  _________            "
echo " |________/ | _________/ | _______ | |\      ||"
echo " ||         ||           ||       || ||\     ||"
echo " ||         ||           ||       || ||\\    ||"
echo " ||______   ||           ||_______|| || \\   ||"
echo " |______ |  ||           | _______ | ||  \\  ||"
echo "        ||  ||           ||       || ||   \\ ||"
echo " _______||  ||_________  ||       || ||    \\||"
echo " \_______|  |_________/  ||       || ||     \_|"
setterm -foreground red
echo "[V]:1.1.0"






while true; do
setterm -foreground yellow
echo -e "[1] Scanear ports de un sitio Web"
echo "[2] Scanear vulnerabilidades de un sitio Web"
echo "[3] Acer attack DOS a sitio web"
echo "[4] optener datos un sitio web"
echo "[5] salir del script"
echo "[6] scanear vulneravilidades marapido pero ruidoso"
echo "[7] escanear un puerto en espesidico"
setterm -foreground green
read -p "elige una opcion: " opsion
case $opsion in

1) setterm -foreground blue
echo "ingrese el aitio Web a Scanear |"
setterm -foreground red echo "       |"
echo "_______________________________|"
setterm -foreground green
read -p "Web: " web
nmap -Pn -sV  $web
exit
;;

2) setterm -foreground blue
echo "ingresa el sitio web que quieres Scanear |"
echo "_________________________________________|"
 setterm -foreground green
read -p "sitio web: " Web
nmap -Pn --script vuln $Web
exit
;;

3) setterm -foreground blue
echo "ingresa el sitio web para el attack DOS |"
echo "________________________________________|"
setterm -foreground green
read -p "DOS : " DOS
setterm -foreground yellow
echo "__________________________________"
echo "esto durara unos 20 minutos o mas |"
echo "__________________________________|"
setterm -foreground red
echo "attacando..........$DOS"
echo "attacando..................$DOS"
echo "attacando.......$DOS"
echo "attacando........................$DOS"
echo "attacando................$DOS"
echo "attacando......................$DOS"

nmap --script dos -Pn $DOS
echo " _________________________________ "
echo ">>>>>>>>>>ralizado<<<<<<<<<<<<<<|"
echo "________________________________|"
exitu
;;

4) setterm -foreground blue
echo "INGRESA EL SITIO WEB A OPTENER DATOS  |"
setterm -foreground red              echo " |"
echo "______________________________________|"
setterm -foreground green
read -p "Datos: " DAtos


curl -I $DAtos
exit
;;



5) break
exit
;;

6) setterm -foreground yellow

echo "recuerda entre mas rapido te pueden rastrear por lA direxion         |"
echo "IP AMENOS QUE TENGAS TU IP ANONYMA"                           echo " |"
setterm -foreground blue                                              echo"|"
echo " ____________________________________________________________________|"
setterm -foreground green
read -p "ingrese la web a scanear ruidosa mente: " wet


nmap -T 5  -Pn --script vuln $wet
exit
;;

7)setterm -foreground blue
echo "ingresa el sitio web"
setterm -foreground red
echo "______________________"
setterm -foreground green
read -p "ingresa la web: " wel
echo "__________________________|"
setterm -foreground cyan
echo "ingrese el puerto epesifico|"
setterm -foreground red     echo"|"
echo "___________________________|"
setterm -foreground green
read -p "port: " pot
nmap -p $pot -sC $wel
exit
;;

   esac

done
