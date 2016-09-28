cd ~
echo "Bonjour, je suis ton assistant GIT, que désires-tu faire ?"
echo "1. Initialiser un répertoire GIT"
echo "2. Push un répertoire GIT"
echo "3. Pull un répertoire GIT"
read reponse

if [ "$reponse" = "1" ]; then
	echo "-----------------------------------------"
	echo "---------Initialisation en cours---------"
	echo "-----------------------------------------"
	echo "-----------------------------------------"

	echo "------------------------------------------"
	echo "--Nous sommes actuellement à l'adresse :--"
	echo "------------------------------------------"
	echo "------------------------------------------"

pwd

	echo "-------------------------------------------"
	echo "--------------on va où ?-------------------"
	echo "-------------------------------------------"
	echo "-------------------------------------------"

read adresse
cd ./$adresse/

	echo "-------------------------------------------"
	echo "------------ok on est partie !-------------"
	echo "-------------------------------------------"
	echo "-------------------------------------------"

touch .gitignore
git init
git add .
git commit -m 'initial commit'

	echo "-------------------------------------------"
	echo "-------------Url du dépot?-----------------"
	echo "-------------------------------------------"
	echo "-------------------------------------------"

read url
git push--all $url
git remote add origin $url
git push -u origin master
firefox $url

elif [ "$reponse" = "2" ]; then
	echo "------------------------------------------"
	echo "-----Quel fichier allons nous push ?------"
	echo "------------------------------------------"
	echo "------------------------------------------"
read path
cd ./$path/
git add .
	echo "-----------------------------------------"
	echo "----------Un commentaire ?---------------"
	echo "-----------------------------------------"
	echo "-----------------------------------------"
read comment
git commit -m "$comment"
git push
	
	echo "-----------------------------------------"
	echo "----------Mission Completed--------------"
	echo "-----------------------------------------"
	echo "-----------------------------------------"

firefox $url

fi