zenity --title "Tutors love u" --height=100 --width=800 --warning --text="<span color=\"red\"><span size=\"80000\">Pense à lock ta session</span></span>"
zenity --title "Pourquoi ?" --height=100 --width=300 --question --text="Imagines en entreprise, tu as des documents confidentiels sur ta session, tu oublies de lock ta session et quelqu'un passe et vole les documents, tu penses que ton patron sera content ?"
while [ $? -eq 0 ]
do
	zenity --title "Tu es sur qu'il/elle sera content(e) ?" --height=100 --width=300 --question --text="Imagines en entreprise, tu as des documents confidentiels sur ta session, tu oublies de lock ta session et quelqu'un passe et vole les documents, tu penses que ton patron sera content ?"
done
zenity --title "Tutors love u" --height=100 --width=300 --info --text="Aller retourne a tes C"
curl -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
