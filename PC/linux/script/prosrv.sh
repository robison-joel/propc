#!/bin/bash +x
#
#
echo "digite o que vai: "
read oquevai
#
echo "digite pra onde: /home/rjgs/"
read praonde
#
scp -r $oquevai rjgs@192.168.100.200:/home/rjgs/$praonde
