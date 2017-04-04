#!/bin/bash

yum install epel-release -y

yum update -y

yum install redis -y


echo starting, then status and ss

systemctl enable redis
systemctl start redis
systemctl status redis

ss -nlp | grep redis
