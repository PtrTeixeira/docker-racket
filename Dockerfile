FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 78a6964df4e950606b9b7c14c08f2ad1ffe7a88c 

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.11/racket-6.11-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
