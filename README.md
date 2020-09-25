# Alpine rsnapshot

Spontaneously back up with rsnapshot

# Goal

- Small image size
- Keep files when the remote server is down
- Back up as a local user

# Setup

```
$ ./init.sh
```

This creates `.env` file and `rsnapshot.conf` from the `build/rsnapshot.conf`


# Running

```
$ docker-compose up
```

This will add hourly.x directory in backups and copy source files into it.
This is supposed to be called once a hour.

See [`rsnapshot.conf`](https://github.com/kennyhyun/alpine-rsnapshot/blob/master/build/rsnapshot.conf) for details
