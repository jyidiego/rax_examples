#!/bin/bash

ssh-keygen -t rsa
nova keypair-add --pub-key /root/.ssh/id_rsa.pub wwidemo
