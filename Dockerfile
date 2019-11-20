FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 133fb359833efe7152380284567eb3b8e43630d2

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.5/racket-7.5-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
