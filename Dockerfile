FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 5b4af3e4bed35f06c3f51e50fa81760c2d45af03

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.6/racket-6.6-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
