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
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/jdk8/.m2:/home/developer/.m2" \
    --volume="$HOME/Docker/containers-data/jdk8/.java:/home/developer/.java" \
    --volume="$HOME/Docker/containers-data/jdk8/.sonar:/home/developer/.sonar" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    wilver/jdk:8.0_212
}

intellij(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/jdk8/.m2:/home/developer/.m2" \
    --volume="$HOME/Docker/containers-data/jdk8/.java:/home/developer/.java" \
    --volume="$HOME/Docker/containers-data/jdk8/.sonar:/home/developer/.sonar" \
    --volume="$HOME/Docker/containers-data/jdk8/.IdeaIC2019.1:/home/developer/.IdeaIC2019.1" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    wilver/jdk:8.0_212 \
    "./Applications/idea-IC-191.7479.19/bin/idea.sh"
}

androidStudio(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/android-studio/Android:/home/developer/Android" \
    --volume="$HOME/Docker/containers-data/android-studio/flutter:/home/developer/flutter" \
    --volume="$HOME/Docker/containers-data/android-studio/.android:/home/developer/.android" \
    --volume="$HOME/Docker/containers-data/android-studio/.java:/home/developer/.java" \
    --volume="$HOME/Docker/containers-data/android-studio/.gradle:/home/developer/.gradle" \
    --volume="$HOME/Docker/containers-data/android-studio/.AndroidStudio3.4:/home/developer/.AndroidStudio3.4" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    wilver/android-sdk:1.0 \
    "./Applications/android-studio/bin/studio.sh"
}

dbeaver(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/.Xauthority:/home/developer/.Xauthority:rw" \
    --volume="$HOME/Docker/containers-data/dbeaver/.dbeaver4:/home/developer/.dbeaver4" \
    --volume="$HOME/Docker/containers-data/dbeaver/.dbeaver-drivers:/home/developer/.dbeaver-drivers" \
    --volume="$HOME/Applications/dbeaver:/home/developer/dbeaver" \
    wilver/jre:8.0_212 \
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
    --volume="$HOME/Docker/containers-data/node11/.config:/home/developer/.config" \
    --volume="$HOME/Docker/containers-data/node11/.node-gyp:/home/developer/.node-gyp" \
    --volume="$HOME/Docker/containers-data/node11/.java:/home/developer/.java" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    --volume="$HOME/Applications:/home/developer/Applications" \
    wilver/node:11
}

node8(){
    docker run -ti \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -e "TZ=America/Guatemala" \
    --volume="$HOME/Docker/containers-data/node8/.npm:/home/developer/.npm" \
    --volume="$HOME/Docker/containers-data/node8/.node-gyp:/home/developer/.node-gyp" \
    --volume="$HOME/Projects:/home/developer/Projects" \
    wilver/node:8
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
    --volume="$HOME/Projects/Megapaca/Java/pos/pos-jar:/home/developer/pos" \
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


"$@"

