if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gowdru123/bitabot  /bitabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /bitabot
fi
cd /bitabot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
