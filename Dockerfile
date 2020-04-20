FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 7dc60d55b2a47bfa9f41d273dd900f020ae92554

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.6/racket-7.6-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
