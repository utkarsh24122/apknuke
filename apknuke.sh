PATH_TO_NucleiTemplates="/[path]/mobile-nuclei-templates/"

target="$1" 

echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Decompiling ... \e[0m\n" 

apktool d $target -f -o "$target"_decompile

echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Decompiled & Saved in /"$target"_decompile ! \e[0m\n" 

echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Running Nuclei Templates ... \e[0m\n" 

mkdir "$target"_nuclei_output

pwd | (read foo; echo "$foo"/"$target"_decompile | nuclei --silent -t $PATH_TO_NucleiTemplates -o "$target"_nuclei_output/nuk.txt )

if [[ $(cat ./"$target"_nuclei_output/nuk.txt | wc -l) -le 1 ]]; then
    echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m No results ... Better Luck Next time \e[0m\n" 
  else echo -e "\n\e[36m[\e[32m+\e[36m]\e[92m Results Saved in "$target"_nuclei_output/ \e[0m\n" 
cat "$target"_nuclei_output/nuk.txt | grep "info" | sort -u >> "$target"_nuclei_output/info.txt
cat "$target"_nuclei_output/nuk.txt | grep -v "info" | sort -u >> "$target"_nuclei_output/non-info.txt
cat "$target"_nuclei_output/nuk.txt | grep "firebase-database" | sort -u >> "$target"_nuclei_output/non-info.txt
rm "$target"_nuclei_output/nuk.txt
fi
