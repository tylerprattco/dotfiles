#!/bin/bash

sudo systemctl start libvirtd.service
sudo systemctl start virtlogd.socket
sudo virsh net-start default
