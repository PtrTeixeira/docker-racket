FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 e550f5cff7b2acc6d47bca863c7a011f19f54d8a

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/8.0/racket-8.0-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
