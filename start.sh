if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kboynobita999/Steam-and-download-bot.git /Steam-and-download-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Steam-and-download-bot 
fi
cd /Steam-and-download-bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
