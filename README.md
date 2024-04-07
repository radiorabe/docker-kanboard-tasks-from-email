# docker-kanboard-tasks-from-email

Docker image to run https://github.com/radiorabe/kanboard-tasks-from-email

## <span style="background:yellow">N00b work in progress, do not use!</span>

    ## Build

```bash
docker build -t kanboard-tasks-from-email https://github.com/radiorabe/docker-kanboard-tasks-from-email.git
```

## Run

```bash
cat << EOF > environment.list
IMAPS_SERVER=          # required
IMAPS_USERNAME=        # required
IMAPS_PASSWORD=        # required
KANBOARD_CONNECT_URL=  # required
KANBOARD_API_TOKEN=    # required
KANBOARD_PROJECT_NAME= # required
#KANBOARD_TASK_DUE_OFFSET_IN_HOURS=
#KANBOARD_GROUP_ID=
#WELL_KNOWN_EMAIL_ADDRESSES=
EOF

docker run --env-file environment.list localhost/kanboard-tasks-from-email
```

## License

This container image and it's definition is free software: you can redistribute
it and/or modify it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, version 3 of the License.

## Copyright

Copyright (c) 2024 [Radio Bern RaBe](http://www.rabe.ch)
