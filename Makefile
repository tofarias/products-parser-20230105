sail-up:
	./vendor/bin/sail up -d

sail-down:
	./vendor/bin/sail down

sail-frb:
	./vendor/bin/sail up -d --force-recreate --build

migrate-rs:
	./vendor/bin/sail artisan migrate:refresh --seed

model-mf:
	./vendor/bin/sail php artisan make:model --migration --factory

cache-clear:
	./vendor/bin/sail artisan cache:clear && \
	./vendor/bin/sail artisan config:clear && \
	./vendor/bin/sail artisan view:clear && \
	./vendor/bin/sail artisan auth:clear-resets && \
	./vendor/bin/sail artisan optimize:clear && \
	./vendor/bin/sail artisan route:clear && \
	./vendor/bin/sail composer dump