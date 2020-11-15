FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 90bbffde59be8273050ad6ae83e539d83f2acd1b

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.9/racket-7.9-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
