FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 6e5f06f0d0a6c13585f65ff0cf3dcc66f272372c

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.9/racket-6.9-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
