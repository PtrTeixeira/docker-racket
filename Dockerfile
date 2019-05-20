FROM buildpack-deps:bionic-scm

ENV RACKET_SHA1 66a3f340d932fd91f84db35280a4ce831011b711

RUN wget -qO /tmp/racket.sh https://mirror.racket-lang.org/installers/7.3/racket-7.3-x86_64-linux.sh && \
echo "$RACKET_SHA1 /tmp/racket.sh" | sha1sum -c - && \
/bin/sh /tmp/racket.sh --unix-style --dest /usr/racket --create-dir && \
rm /tmp/racket.sh

ENV PATH /usr/racket/bin:$PATH
ENTRYPOINT ["racket"]
CMD ["--version"]
