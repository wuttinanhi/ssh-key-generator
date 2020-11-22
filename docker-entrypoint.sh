#!/bin/sh

FILE=/sshkey/id_rsa.pub
if [ -f "$FILE" ]; then
    echo "key will not generate because file alreay exists."
else 
    echo "Generating key..."
    (cat /dev/zero | ssh-keygen -m PEM -t rsa -q -N "" -f "/root/.ssh/id_rsa")> /dev/null 2>&1
    
    mv ~/.ssh/id_rsa.pub /sshkey
    mv ~/.ssh/id_rsa /sshkey

    echo "done."
fi
