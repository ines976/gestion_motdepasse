#!/bin/bash
help(){
cat help.txt | yad --text-info --width="800" --height="1000" --title="Resultat"
}
export -f help
auteur(){
cat auteur.txt | yad --text-info --width="800" --height="1000" --title="Resultat" ; cat password.sh | yad --text-info --width="800" --height="1000" --title="Resultat"
}
export -f auteur
menu(){
cat menu.txt | yad --text-info --width="800" --height="1000" --title="Resultat"
}
export -f menu
click_one(){
password=`yad --title="Ecrire votre mot de passe" --image="img/add.png" --text-align="center" --form   --field="mot de passe":H`
len="${#password}"
#-entry-label="mot de passe:
if test $len -ge 8 ; then
    echo "$password" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$password" | grep -q [@#$%*+-=]
                if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]   
                      if test $? -eq 0 ; then                       
                          (yad --center --width=750 --image="gtk-dialog-info" --title="valid" --text="Le mot de passe est fort"   )  
                   else
                                   
                       (yad --center --width=750 --image="gtk-dialog-info" --title="valid" --text="Le mot de passe est faible il doit contenir un caractère"   )  

                   fi

            else               
               (yad --center --width=750 --image="gtk-dialog-info" --title="valid" --text="Le mot de passe est faible il doit contenir un caractère spécial"   )  
            fi
     else
              (yad --center --width=750 --image="gtk-dialog-info" --title="valid" --text="Le mot de passe est faible il doit contenir un chiffre"  )  
     fi
else
   (yad --center --width=750 --image="gtk-dialog-info" --title="valid" --text="la longueur de $champ1 doit etre superieure a 8 cararctères ")
      
fi
}
export -f click_one 
yad --width 200 --height 200 --title "Tester mot de passe"\
    --center --text="Click a button to see what happens" \
    --button="password":"bash -c click_one" \
    --button="help":"bash -c help" \
    --button="auteurs":"bash -c auteur" \
        --button="menu":"bash -c menu" \
    --button="Exit":0
