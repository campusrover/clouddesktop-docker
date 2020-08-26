.PHONEY: start stop fix update
start:
	@[ -d rospersistent ] || mkdir rospersistent
	@sed "s|ROSPERSISTENT-PATH|$$(pwd)\/rospersistent|" docker-compose.yaml > .docker-compose.yaml 
	docker-compose -f .docker-compose.yaml up -d

stop:
	docker-compose -f .docker-compose.yaml down

fix:
	docker network prune -f
	docker container prune -f

update:
	@git pull
	@docker-compose -f .docker-compose.yaml pull
	docker-compose -f .docker-compose.yaml up -d --force-recreate
