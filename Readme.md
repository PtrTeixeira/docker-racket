Debian-based imaged for building applications in the
[Racket](http://racket-lang.org). This is in addition to the 4+ that are already
on Docker Hub, which you may want to use instead of this one.

This image is designed to execute `racket <args>`. If you need to do something
more complicated than this, such as running `raco test`, you will want to set
`--entrypoint` when you run the container. 

If you build an image derived from this one, the executables from Racket like
`racket` and `raco`, are on the path. 

Usage: 
```
docker run -itv "$PWD":/usr/src/app racket:latest /usr/src/app/file.rkt
```


License: 
MIT License
