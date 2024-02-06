var=0
zenity --title "The Tutors team loves u" --height=100 --width=800 --warning --text="<span color=\"red\"><span size=\"75000\">Pense à lock ta session

Did you think about locking your session?</span></span>"
zenity --title "Pourquoi ? /  why ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?

Imagine this scenario
You have confidential documents in your session...
You forgot to lock your session and now someone has stolen your documents...

Do you think your boss will be happy?"
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

Imagine this scenario
You have confidential documents in your session...
You forgot to lock your session and now someone has stolen your documents...

Do you think your boss will be happy?

<span color=\"red\"><span size=\"$(($var * 5000))\">Il faut lire, pas regarder !
Just read, don't watch !</span></span>"
		else
		zenity --title "Tu es VRAIMENT sûr qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?

Imagine this scenario
You have confidential documents in your session...
You forgot to lock your session and now someone has stolen your documents...

Do you think your boss will be happy?

<span size=\"$(($var * 5000))\">Il faut lire, pas regarder !
Just read, don't watch !</span>"
		fi
	else
		zenity --title "Tu es VRAIMENT sûr qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise:
tu as des documents confidentiels sur ta session...
tu oublies de lock ta session et quelqu'un passe et vole les documents...

Tu penses que ton patron sera content ?
Imagine this scenario
You have confidential documents in your session...
You forgot to lock your session and now someone has stolen your documents...

Do you think your boss will be happy?"
	fi
done
zenity --title "The Tutors team loves u" --height=100 --width=300 --info --text="Allez retourne a tes projets !"
curl -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
