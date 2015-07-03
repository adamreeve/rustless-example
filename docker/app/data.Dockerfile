FROM adreeve/rust:2015-07-02

VOLUME /root/.cargo

VOLUME /app/target

CMD ["/bin/true"]
