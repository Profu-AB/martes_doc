git config --global user.email "martin.magnemyr@gmail.com"
git config --global user.name "Martin Magnemyr"

ssh-keygen -t rsa -b 4096 -C "martin.magnemyr@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub