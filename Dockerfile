FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 91f047da4c0fe8da133c501f5e26b673a1eb4ed0 

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.10.1/racket-6.10.1-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
