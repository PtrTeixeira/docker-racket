FROM buildpack-deps:jessie-curl

ENV RACKET_SHA1 ac3723784ecbb701ef4463988fe8118649edc6b1

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/6.7/racket-6.7-x86_64-linux.sh && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
