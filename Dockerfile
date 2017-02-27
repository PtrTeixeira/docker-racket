FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 e96dbe2ed47463ad075b98276b986e2703fb5c2d

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.8/racket-6.8-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
