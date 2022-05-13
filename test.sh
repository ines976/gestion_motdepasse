#!/bin/bash

password(){
 echo "enter the password"


read password


len="${#password}" #calculer la longueur de mot de passe


 


if test $len -ge 8 ; then #tester la longueur 


 


    echo "$password" | grep -q [0-9] 


     if test $? -eq 0 ; then # tester si il ya un chiffre


           echo "$password" | grep -q [@#$%*+-=] 


                if test $? -eq 0 ; then # tester si il ya un caractère spécial


                    echo "$password" | grep -q [a-z]   


                      if test $? -eq 0 ; then


                       echo "Strong password"


                   else


                       echo "weak password include character"


                   fi


            else


               echo "weak password include a special character" 


            fi


     else


       echo "please include the numbers in password it is weak password"   


     fi


else


    echo "password lenght should be greater than or equal 8 hence weak password"


fi
}

password;
