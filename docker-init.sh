if [ ! -f /minecraft/docker-start.sh ]; then
  if [ ! -d /minecraft ]; then
    mkdir /minecraft
  fi
  mv /docker_init/* /minecraft/
  sh /minecraft/docker-start.sh
else
  if [ ! -d /minecraft/bin ]; then
      mkdir /minecraft/bin
      mv /docker_init/bin/* /minecraft/bin/
  fi
  rm -rf /docker_init/*
  sh /minecraft/docker-start.sh
fi