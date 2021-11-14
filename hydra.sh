clear
figlet -f small "Hydra" | lolcat
figlet -f small "				modified" | lolcat
figlet -f small "		By" | lolcat
figlet -f small "Rupesh" | lolcat
echo ""
echo ""
echo ""
sleep 2



read -p "do you have username (y/n): " uname
if [ "$uname" = y ]
then
read -p "enter username: " username
read -p "enter Password Path: " passlist
read -p "enter website or ip: " website
read -p "enter category (http-post-form,ftp,ssh): " category

if [ "$category" = http-post-form ];
then
read -p "enter login page (/login): " login
read -p "enter USER: " user
read -p "enter PASS: " pass
read -p "Enter false password result: " false
hydra -l $username -P $passlist $website $category "/$login:$user=^USER^&$pass=^pass^:F=$false"
elif [ "$category" = ftp ];
then
hydra -l $username -P $passlist $website

elif [ "$category" = ssh ];
then
hydra -l $username -P $passlist $website
else 
echo "invalid..."
fi









elif [ "$uname" = n ]


then
read -p "enter userlist path: " userpath
read -p "enter Password Path: " passlist
read -p "enter website or ip: " website
read -p "enter category (http-post-form,ftp,ssh): " category

if [ "$category" = http-post-form ];
then
read -p "enter login page (/login): " login
read -p "enter USER: " user
read -p "enter PASS: " pass
read -p "Enter false password result: " false
hydra -L $userpath -P $passlist $website $category "/$login:$user=^USER^&$pass=^pass^:F=$false"
elif [ "$category" = ftp ];
then
hydra -L $userpath -P $passlist $website

elif [ "$category" = ssh ];
then
hydra -L $userpath -P $passlist $website
else
echo "invalid..."
fi













else


echo "wrong input: "

fi