FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 4184357715fa90cee418457d3e36d3d13c6508a5

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.2/racket-7.2-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
