# sytaxe d'appel :
# ybcjr s3 j1

# rwx rwx rwx 1er toi, 2em group, 3em autres
# r 0/4
# w 0/2
# x 0/1  -> x execution ou pour les directory
#
# umask 644 par défaut -> 755
#
# chmod ybcjr 755

# vérification des parametres d'appel
# ^ deb - s ou j obli - [0-9] 1 chiffre - {1} 1 seul - {1,} 1 au moins - $ fin
reg1='^s[0-9]{1,}$'
reg2='^j[0-9]{1}$'

if [[ "$1" =~  $reg1 ]] && [[ "$2" =~  $reg2 ]]
then
	echo "parametres ok"
else
	echo "Erreur dans les parametres d'appel !!! (s99 j9)"
	exit
fi

# verification directory semaine ou creation
if [ -e ~/Documents/thp/formation/$1 ]
then
	echo "directory 'semaine' exist"
else
	echo "create directory 'semaine'"
	mkdir ~/Documents/thp/formation/$1
fi

# verification directory semaine ou creation
if [ -e ~/Documents/thp/formation/$1/$2 ]
then
	echo "directory 'jour' exist"
else
	echo "create directory 'jour'"
#   creation directory
	mkdir ~/Documents/thp/formation/$1/$2
	mkdir ~/Documents/thp/formation/$1/$2/mon_projet
	mkdir ~/Documents/thp/formation/$1/$2/mon_projet/lib
#   creation README.md
	echo "projet $1 $2" > ~/Documents/thp/formation/$1/$2/mon_projet/README.md
#	copy s0_init dans nouveau jour
	cp -r ~/Documents/thp/formation/s0_init/* ~/Documents/thp/formation/$1/$2/mon_projet/
#   bundle install & rspec --init
	cd ~/Documents/thp/formation/$1/$2/mon_projet
	bundle install
	rspec --init
#	git add
	cd ~/Documents/thp
	git add .
	git commit -m "initialisation journee $1 $2"
	git push
fi