#!/bin/sh

if test ! -f "Waterfall.jar"; then
  echo "Waterfall.jar not found. Downloading..."
  wget https://papermc.io/ci/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar
fi

while true; do
  java -Xms1G -Xmx1G -jar Waterfall.jar

  echo "Restarting server in 5 seconds. CTRL-C to cancel."
  sleep 5
  clear
done