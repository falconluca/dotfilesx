#!/bin/bash

alias javav="echo '$(java -version 2>&1 | sed -n '2p' | awk '{print $1}') v$(java -version 2>&1 | head -n 1 | awk '{print $3}' | tr -d '""')'"

echo -e "\n☕️ ==> Java:"; javav
echo "jshell is ready"

