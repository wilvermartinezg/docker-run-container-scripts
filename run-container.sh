mongodb(){
	docker run -ti --rm --net=host -p 27017:27017 wilver/mongo:4.0
}

ionic(){
	docker run -ti \
    --rm \
    --net=host \
    -e "TZ=America/Guatemala" \
	--volume="$HOME/Documentos/dockerfiles/ionic/Sdk:/home/developer/android/sdk" \
	--volume="$HOME/.android:/home/developer/.android" \
    --volume="$HOME/.gradle:/home/developer/.gradle" \
    --volume="$HOME/.npm:/home/developer/.npm" \
	--volume="$HOME/projects:/home/developer/projects" \
    --volume="$HOME/.config:/home/developer/.config" \
	wilver/ionic:3.0
}

jdk11(){
    docker run -ti \
    --rm \
    --net=host \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.m2:/home/developer/.m2" \
    --volume="$HOME/projects:/home/developer/projects" \
    --volume="$HOME/.java:/home/developer/.java" \
    --volume="$HOME/.sonar:/home/developer/.sonar" \
    wilver/jdkfx:11.0.1
}

jdk8(){
    docker run -ti \
    --rm \
    --net=host \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.m2:/home/developer/.m2" \
    --volume="$HOME/projects:/home/developer/projects" \
    --volume="$HOME/.java:/home/developer/.java" \
    --volume="$HOME/.sonar:/home/developer/.sonar" \
    wilver/jdk:1.8.0_192
}

dbeaver(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.Xauthority:/home/developer/.Xauthority:rw" \
    --volume="$HOME/.m2:/home/developer/.m2" \
    --volume="$HOME/.dbeaver4:/home/developer/.dbeaver4" \
    --volume="$HOME/.dbeaver-drivers:/home/developer/.dbeaver-drivers" \
    --volume="$HOME/Applications/dbeaver/:/home/developer/dbeaver" \
    wilver/jrex64:1.8.0_192 \
    "/home/developer/dbeaver/dbeaver"
}

webstorm(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/node11/.npm:/home/developer/.npm" \
    --volume="$HOME/Docker/containers-data/node11/.node-gyp:/home/developer/.node-gyp" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    --volume="$HOME/Docker/containers-data/node11/.java:/home/developer/.java" \
    --volume="$HOME/Docker/containers-data/node11/.WebStorm2019.1:/home/developer/.WebStorm2019.1" \
    wilver/node:11 \
    "./Applications/WebStorm-191.7479.14/bin/webstorm.sh"
}

node11(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/node11/.npm:/home/developer/.npm" \
    --volume="$HOME/Docker/containers-data/node11/.node-gyp:/home/developer/.node-gyp" \
    --volume="$HOME/Docker/containers-data/node11/.java:/home/developer/.java" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    wilver/node:11
}

node10(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/node10/.npm:/home/developer/.npm" \
    --volume="$HOME/Docker/containers-data/node10/.node-gyp:/home/developer/.node-gyp" \
    --volume="$HOME/projects:/home/developer/projects" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    --volume="$HOME/Docker/containers-data/node10/.java:/home/developer/.java" \
    --volume="$HOME/Docker/containers-data/node10/.WebStorm2019.1:/home/developer/.WebStorm2019.1" \
    wilver/node:10.1
}

psql(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e LD_BIND_NOW=1 \
    -e "TZ=America/Guatemala" \
    -v pgdata:/var/lib/postgresql \
    --volume="$HOME/.Xauthority:/home/developer/.Xauthority:rw" \
    --volume="$HOME/projects/megapaca/java/pos/pos-jar:/home/developer/pos" \
    wilver/psql:9.5
}

javaApps(){
     docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.Xauthority:/home/developer/.Xauthority:rw" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    wilver/jrex64:1.8.0_192
}

cpos(){
     docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.Xauthority:/home/developer/.Xauthority:rw" \
    --volume="$HOME/projects/chapindevs/chapin-pos/jars:/home/developer/pos" \
    wilver/jrex86:1.8.0_192
}

"$@"

