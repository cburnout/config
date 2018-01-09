wget https://discordapp.com/api/download?platform=linux&format=deb --output-document=discord-0.0.1.deb 
sudo apt install libappindicator1 libc++1 desktop-file-utils mime-support
sudo dpkg -i discord-0.0.1.deb
rm discord-0.0.1.deb
