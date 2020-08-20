FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 cb82299fb7264e087f3f04d02ee866f589a4bbbb

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.8/racket-7.8-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
