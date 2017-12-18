# CMSC389L
## Goal
Gain experience with AWS by hosting a minecraft server

## What's here
[Part 1:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%202:%20Find%20the%20Easier%20Way%20with%20Ubuntu%20Server) Procedute I used for manually serrting up the server on using ami-55ef662f, maintaining the use of your command line while the server is up using linux screen, manual backups to EBS. [Part 2:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%202:%20Find%20the%20Easier%20Way%20with%20Ubuntu%20Server) Procedure for using [MSM](https://github.com/msmhq/msm) on a t2.micro with an Ubuntu Server image, customizable script for pushing logs to the admin via SNS, plugging that script into a cron job. [Part 3:](https://github.com/iaLockwood/CMSC389L/blob/master/Part%203:%20Where%20can%20we%20go%20from%20here) No project would be comeplete without a placeholder for what you'd like to complete but didn't.


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

