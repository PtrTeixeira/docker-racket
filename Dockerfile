FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 a10d05cd844d77c7060aa9e91b6af0e1ebfcf5f8 

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.0/racket-7.0-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh >> /dev/null && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
