## Testing

### Build

```
docker image build -t <image name> .
```

### Run 

```
docker container run -it --name <container name> -p 8888:8888 <image name>
```

### Mounting Procedure

To mount the current directory with the container and access any files on the host:

#### Mac OS/Linux
```
docker container run -v $(pwd):/home -it --name <container name> -p 8888:8888 <image name>
```

#### Windows (Powershell)
```
docker container run -v ${pwd}:/home -it --name loadable-container -p 8888:8888 loadable-workshop
```

### External Interaction

To get a shell to the container while Jupyter Notebook is "occupying" the main CLI:

For anything with bash support:
```
docker exec -it <container name> /bin/bash
```

For anything based on Alpine linux:
```
docker exec -it <container name> /bin/sh
```
