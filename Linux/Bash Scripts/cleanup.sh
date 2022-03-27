#!/bin/bash

# Clean up temp directories

rm -rf /tmp/*
rm -rf /var/tmp/*

# Clean the apt cache

apt clean -y

# Clean thumbnail cache

rm -rf /home/sysadmin/.cache/thumbnails 
rm -rf /home/instructor/.cache/thumbnails
rm -rf /home/student/.cache/thumbnails
rm -rf /root/.cache/thumbnails


