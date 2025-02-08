sudo apt-get install xclip   # for Ubuntu/Debian-based systems
sudo apt-get install xsel    # for Ubuntu/Debian-based systems



# Load environment variables from .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Set Git config
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"

# Generate SSH key
ssh-keygen -t rsa -b 4096 -C "$GIT_USER_EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa.pub

cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

echo go to https://github.com/settings/keys
echo then run scri
