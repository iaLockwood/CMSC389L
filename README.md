# CMSC389L
## Goal
Gain experience with AWS by hosting a minecraft server

## What's here
[Part 1:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%202:%20Find%20the%20Easier%20Way%20with%20Ubuntu%20Server) Procedure I came to after much trial and error for manually serrting up the server on using ami-55ef662f, maintaining the use of your command line while the server is up using linux screen, manual backups to EBS. [Part 2:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%202:%20Find%20the%20Easier%20Way%20with%20Ubuntu%20Server) Procedure for using [MSM](https://github.com/msmhq/msm) on a t2.micro with an Ubuntu Server image, customizable script for pushing logs to the admin via SNS, plugging that script into a cron job. [Part 3:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%203:%20Where%20can%20we%20go%20from%20here) No project would be comeplete without a placeholder for what you'd like to complete but didn't.


## Services Used
EC2 - host server

EIP - one ip for users to know

SNS - push logs to admin upon user login

EBS - quick backups

S3 - optional long-term storage

IAM - manage access


## AWS Architecture Diagram
![alt text](CMSC389L/blob/master/architecture%20.pdf raw=true "Title")


## Videos: for if you don't like reading
High level [intro](https://www.useloom.com/share/1a80855a063b493690215ea836aa9151)

Current [architecture](https://www.useloom.com/share/aeba86ee93c64b35b23630e32bf10e46)

Idealized (scaled) [architecture](https://www.useloom.com/share/ac3bf8205dad438298c6da96ee4a2564)

## Videos: for if you don't like reading or talking
Server in [action](https://www.useloom.com/share/396e412fddb2414699a9a6583943760c)

User login notification [demo](https://www.useloom.com/share/e5bf710811da489ea673d0e11377e78d)

Server in [action](https://www.useloom.com/share/e5bf710811da489ea673d0e11377e78d) part two, electric boogaloo

## Problems and Solutions
Problem: promising resource (1) stopped publishing half-way a year ago 
Solution: more research!

Problem: minecraft_server.1.12 throws exception on AMI Linux t2.micro 
Solution: remove java 1.7 from instance and install 1.8

Problem in disguise: “there’s someone who wrote a blog that fills in some gaps
from the unpublished first one. Cool! ... wait ... that makes this project feel
kind of derivative, which isn’t really the point” 
Solution: Draw on various resources to make something greater than the sum of
its parts. That’s what programming is. Right?

Problem: t2.micro won’t work ‘out of the box’ with Mincraft Server Manager
Workaround Solution: roll your own
Second Solution: find out later you the installation script are built for ubuntu (they use apt-get instead of yum) and so you can resolve this by using an ubuntu ami

Problem: msm, once installed, hangs when starting a server; and demands java
Soulution: install java

Problem: msm still hangs when starting a server, but has no friendly messages. After much trial and error you find the instance is running out of ram. This is unexpected because you used same default as when you rolled your own, and it worked.
Solution: Cut default ram used by minecraft server to 512 down from 1024. In hindsight this makes sense as MSM has some overhead.

