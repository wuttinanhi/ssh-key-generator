#!/bin/sh

FILE=/sshkey/id_rsa.pub
if [ -f "$FILE" ]; then
    echo "key will not generate because files already exists."
else
    echo "Generating key..."
    (cat /dev/zero | ssh-keygen -q -m "$KEY_FORMAT" -t "$TYPE" -f "$FILENAME" -N "$PASSPHRASE" -C "$COMMENT")> /dev/null 2>&1
    echo "done."
fi
