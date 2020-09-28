# Alpine rsnapshot

Spontaneously back up with rsnapshot

# Goal

- Small image size
- Keep files when the remote server is down
- Back up as a local user

# Running

Provide `BACKUP_DIRECTORIES` for backup locations.
One location per line is allowed and it's tab separated.

```sh
#!/bin/bash

docker run\
  --name rsnapshot\
  --rm\
  --privileged\
  -v /etc/passwd:/etc/passwd:ro\
  -v /etc/group:/etc/group:ro\
  -v $HOME/.ssh/id_rsa:$HOME/.ssh/id_rsa:ro\
  -v ./backups:/var/rsnapshot\
  -u $UID:$GID\
  -w $HOME\
  -e "BACKUP_DIRECTORIES=       kennyhyun@192.168.0.100:/etc/cron.d server/
        kennyhyun@192.168.0.100:/etc/fonts  server/"\
  kennyhyun/alpine-rsnapshot\
  rsnapshot $1
```

and you can run periodically

rsnapshot.sh daily

rsnapshot.sh weekly

rsnapshot.sh monthly


See [`rsnapshot.conf`](https://github.com/kennyhyun/alpine-rsnapshot/blob/master/build/rsnapshot.conf) for details
