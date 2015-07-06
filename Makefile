run:
	docker-compose up

migrate:
	docker-compose run app ./migrate.sh

dbclient:
	docker-compose run dbclient psql

rust-image:
	$(eval DATE := $(shell date "+%Y-%m-%d"))
	docker build -t docker.io/adreeve/rust-nightly:${DATE} -f docker/rust/rust.Dockerfile .

.PHONY: run migrate dbclient rust-image
