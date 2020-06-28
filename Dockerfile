FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 9ee33267c4690614d3bbb9ff137c47e8be563727

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.7/racket-7.7-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
