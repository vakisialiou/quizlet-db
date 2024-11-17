#### Docker commands:

```shell
docker compose up -d
```

```shell
docker compose restart
```

```shell
docker compose down --remove-orphans
```

```shell
docker exec -it api bash
```

```shell
# show logs
docker logs --since 3h -f api-0
# clear logs
echo "" > $(docker inspect --format='{{.LogPath}}' api-0)
```
