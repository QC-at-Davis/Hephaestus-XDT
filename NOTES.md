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