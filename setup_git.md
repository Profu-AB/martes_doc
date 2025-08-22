## setting up git in linux
1. update the .env file so that contains your email and your name
2. run the script setupgit.sh
3. go
 to https://github.com/settings/keys and paste the ssh-key here
    this step requires that you are logged in in github and have access to the repo. You also need to setup authenticator.


# script example
git config --global user.email "martin.magnemyr@gmail.com"
git config --global user.name "Martin Magnemyr"

ssh-keygen -t rsa -b 4096 -C "martin.magnemyr@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa


## add ssh key to github
    cat ~/.ssh/id_rsa.pub

    - https://github.com/settings/keys
    - this step includes uploading (pasting) your ssh key in git 

    - copy key from cat.. step
    - open settings in github
    - choose SSH and GPG keys in the left menu
    -   in the page find button "New SSH key"
    -   give it a name and scope and paste your ssh key

## back in linux again
ssh -T git@github.com

- expected output
    - Hi username! You've successfully authenticated, but GitHub does not provide shell access.


## : Configure Git to Use SSH by Default
git config --global url."git@github.com:".insteadOf "https://github.com/"


