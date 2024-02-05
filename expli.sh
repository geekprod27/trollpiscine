var=0
zenity --title "The Tutors team loves u" --height=100 --width=800 --warning --text="<span color=\"red\"><span size=\"80000\">Pense à lock ta session</span></span>"
zenity --title "Pourquoi ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?"
while [ $? -eq 0 ]
do
	let "var++"
	if [[ $var -gt 1 ]]
	then
		if [[ $var -gt 5 ]]
		then
		zenity --title "Tu es VRAIMENT sûr qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?

<span color=\"red\"><span size=\"$(($var * 5000))\">Il faut lire, pas regarder !</span></span>"
		else
		zenity --title "Tu es VRAIMENT sûr qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?

<span size=\"$(($var * 5000))\">Il faut lire, pas regarder !</span>"
		fi
	else
		zenity --title "Tu es VRAIMENT sûr qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?"
	fi
done
zenity --title "The Tutors team loves u" --height=100 --width=300 --info --text="Allez retourne a tes projets !"
curl -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
