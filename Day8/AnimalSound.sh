declare -A sounds 
sounds[dog]="Bark" 
sounds[cow]="Moo" 
sounds[bird]="Tweet" 
sounds[wolf]="howl"


echo "Dog Sound" ${sounds[dog]}
echo "All Animal Sounds" ${sounds[@]}
echo "Animal keys" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
unset sounds[dog]
