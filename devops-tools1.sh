#!/bin/bash

# Pilih webserver
echo "Pilih webserver :"
echo "1. nginx"
echo "2. apache"
read ch1

# Pilih container
echo "Pilih container :"
echo "1. docker"
echo "2. kubernetes"
read ch2

# Switch case webserver
case $ch1 in
 1)
 echo "Starting install nginx"
 sudo apt install nginx
 ;;
 2)
 echo "Starting install apache2"
 sudo apt install apache2
 ;;
esac

# Switch case container
case $ch2 in
1)
echo "Starting install docker"
sudo apt install docker.io
;;
2)
echo "Starting install kubernetes"
sudo apt install kubeadm kubelet kuctl
sudo apt-mark hold kubeadm kubele kubctl
;;
esac
