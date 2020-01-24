wget "https://docs.google.com/spreadsheets/d/e/2PACX-1vSmUA5ySzT_Vk3-917gd5bm5rZIKCRES4c8zD-J4C_XFptiFyjVf8Y0Hd96Sb0M8ncXT6_95uRNb3sB/pub?gid=773089084&single=true&output=csv" -O temp.csv
sed -e "s/^M//" temp.csv > allbooksever.csv
rm temp.csv
