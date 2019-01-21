FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 bbac1539f74e04789a08938a6fa49685539f96ee

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.1/racket-7.1-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
