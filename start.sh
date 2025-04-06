if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ReBotX/Pdf4u-Koyeb.git /Pdf4u-Koyeb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Pdf4u-Koyeb
fi
cd /HerokuPDF4U
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
