# docker-kanboard-tasks-from-email

Docker image to run https://github.com/radiorabe/kanboard-tasks-from-email

## <span style="background:yellow">N00b work in progress, do not use!</span>

    ## Build

```bash
docker build -t kanboard-tasks-from-email https://github.com/radiorabe/docker-kanboard-tasks-from-email.git
```

## Run

```bash
docker run -ti --rm radiorabe/kanboard-tasks-from-email --version
docker run -ti --rm -v `pwd`:/var/lib/kanboard-tasks-from-email
```

## License

This container image and it's definition is free software: you can redistribute
it and/or modify it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, version 3 of the License.

## Copyright

Copyright (c) 2018 [Radio Bern RaBe](http://www.rabe.ch)
