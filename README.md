# docker armhf plex

This is a Dockerfile to run plex on a an arm based server. It works on arm64 based server too like Odroid-C2.

## Instructions

```
docker run -d \
    --name plex \
    --restart always \
    --net="host" \
    -p 32400:32400 \
    -v <your_plex_config_location>:/config \
    -v <your_medias_location>:/media \
    michaelcoll/odroid-c2-plex
```
