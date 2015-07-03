run:
	docker-compose up

migrate:
	docker-compose run app ./migrate.sh

dbclient:
	docker-compose run dbclient psql

rust-image:
	docker build -t adreeve/rust:2015-07-02 -f docker/rust/rust.Dockerfile .

.PHONY: run migrate dbclient rust-image
