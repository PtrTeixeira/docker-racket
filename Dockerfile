FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 2531e950297cb13c58f73193c3073637f10b73fb 

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.10/racket-6.10-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
