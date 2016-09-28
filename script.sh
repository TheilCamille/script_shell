echo "Bonjour, voulez vous creer une arborescence WEB ? Y/N"
read ouinon

if [ "$ouinon" = "y" ] || [ "$ouinon" = "Y" ]; then
	echo "Ok c'est partie ! tu veux t'appeler comment ?"
	read nom
	echo "Création en cours"
	mkdir -p $nom/{script,css,img,font}
	touch $nom/script/script.js
	touch $nom/css/styles.css
	touch $nom/index.html
	echo "Création terminé"

elif [ "$ouinon" = "n" ] || [ "$ouinon" = "N" ]; then
	echo "Tant pis :("
else
	echo "Il faut taper Y ou N noob :/"
	echo "Pas $ouinon"
	echo "Réessaye encore une fois ><"
	bash script.sh
fi

