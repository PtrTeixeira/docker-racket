FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 2d5b84fa1e1813e3a786033c5e35dd4eccfec784

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.4/racket-7.4-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
