#Create Keypair using AWS console if needed

#Create IAM role allowing S3 access using console if needed

#fiddle with network accessability if necessary

Spin up t2.micro instance 'Amazon Linux AMI 2017.09.1 (HVM), SSD Volume Type - ami-55ef662f' via AWS GUI
Allow TCP input on port 25565
Allow SSH input from your ip
If a later command hangs, allow all traffic to your instance

ssh -i <key>.pem ec2-user@<ip>

//optional, update
sudo yum update

#download the server
wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar

//optional, create a shortcut link if you don't want to type out the name
ln -s minecraft_server.1.12.2.jar server.jar

#server.1.12.2 requires java 1.8
sudo yum install java-1.8.0

#remove older java version
sudo yum remove java-1.7.0-openjdk

#run the server for the first time, it'll generate some files and autoquit
sudo java -Xmx1024M -jar server.jar nogui

#accept EULA after reading and change false to true in eula.txt

#create a new linux screen with a custom name
screen -S myScreen

#start the server
sudo java -Xmx1024M -jar server.jar nogui

#detatch from screen, regaining use of the instance command line and allowing server to run in the background
<ctrl+a><d>

#log into mincraft server using mojang account

#test piping commands to the server from the command line
screen -S myScreen -X stuff "say test $(printf \\r)"

#attached EBS volume using aws gui

#view your available storage
lsblk

#make a place and mount
mkdir backup-volume
sudo mkfs -t ext4 /dev/xvdf1
sudo mount /dev/xvdf1 ~/minecraft/backup-volume
sudo chown ec2-user ../backup-volume/

#the server is usually saving continuously, in order to prevent corruption for our backup we do the following
screen -S myScreen -X stuff "save-off $(printf \\r)"
screen -S myScreen -X stuff "save-all $(printf \\r)"

#copy to a persitent place
cp -r world ../backup-volume/

#allow autosave to continue
screen -S myScreen -X stuff "save-on $(printf \\r)"

#create SNS topic via aws gui, save <arn>

#create subsription via aws gui and confirm

#from command line, test SNS
aws sns publish --topic-arn <arn> --message "testing minecraft notification"

#from command line, publish logs to subscribers
aws sns publish --topic-arn <arn> --message file://latest.log
