#Create Keypair using AWS console if needed

#Create IAM role allowing S3 access using console if needed

#fiddle with network accessability if necessary

Spin up t2.micro instance 'Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-aa2ea6d0' via AWS GUI
Allow TCP input on port 25565
Allow SSH input from your ip
If a later command hangs, allow all traffic to your instance

#note for logging in, username is different
ssh -i p.pem ubuntu@<ip>

#stand on giant shoulders with [MSM](https://github.com/msmhq/msm)
wget -q http://git.io/Sxpr9g -O /tmp/msm && bash /tmp/msm

#install java, otherwise the server won't run and you'll get a helpful message as to why
#set ubuntu as default user
sudo apt-get install default-jre

#change default ram to 512. else the server still won't run, but you won't recieve any clue why not and may spend 3 hours troubleshooting
sudo vim /etc/msm.conf

#read the friendly [documentation](http://msmhq.com/docs/)

#make a server called 'newsrv'
#the name is arbitrary but the script i wrote is hardcoded
#some commands may need to be prepended with 'sudo'
msm server create newsrv

#try running the server; as in our previous trial, it should autoquit
msm newsrv start

#agree to the eula.txt
sudo vim /opt/msm/servers/newsrv/eula.txt

#try running again, it should come up this time
msm newsrv start

#make a home for scripts to live, and give it a dummy file for the list of connected users
mkdir ~/scripts
touch ~/scripts/connected.txt

#put the user_reports.sh script from this repo in its home

#make the script executable
chmod +x ~/scripts/user_resports.txt

#install awscli
sudo apt install awscli

#set your preferred availability zone, i used us-east-1
asw configure

#create a cron job for the ubunu user using the file in this repo
chrontab -e

#and that's it, except for scalability...
