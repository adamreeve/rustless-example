FROM docker.io/adreeve/rust-nightly:2015-07-02

VOLUME /root/.cargo

VOLUME /app/target

CMD ["/bin/true"]
