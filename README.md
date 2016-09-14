# docker armhf plex

This is a Dockerfile to run plex media server on a an Odroid C2.

## Instructions

```
docker run -d \
    --name plex \
    --restart always \
    -p 32400:32400 \
    --net="host" \
    -v <your_plex_config_location>:/config \
    -v <your_medias_location>:/media \
    michaelcoll/odroid-c2-plex
```
