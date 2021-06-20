PATH_TO_NucleiTemplates="/home/headshot/mobile-nuclei-templates/"
target="$1" 
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Decompiling ... \e[0m\n" 

apktool d $target -o "$target"_decompile

echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Decompiled & Saved in "$target"_decompile ... \e[0m\n" 

echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Running Nuclei Templates \e[0m\n" 
mkdir "$target"_apk_nuclei_output

echo /"$target"_decompile/ | nuclei --silent -t $PATH_TO_NucleiTemplates -o "$target"_apk_nuclei_output/nuk.txt

if [[ $(cat ./"$target"_apk_nuclei_output/nuk.txt | wc -l) -le 1 ]]; then
echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m No results ... Better Luck Next time \e[0m\n" 
else echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Results Saved in "$target"_apk_nuclei_output/nuk.txt \e[0m\n" 
fi
