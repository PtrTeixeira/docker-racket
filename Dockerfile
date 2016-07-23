FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 a598614dd6def54bdd39f6808aaec2ad816af3e1

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.5/racket-6.5-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
