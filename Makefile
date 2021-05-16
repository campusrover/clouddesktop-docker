.PHONEY: setup start stop fix update copy

setup:
	@[ -d rospersistent ] || mkdir rospersistent
	@sed "s|ROSPERSISTENT-PATH|$$(pwd)\/rospersistent|" docker-compose.yaml > .docker-compose.yaml

start:
	docker-compose -f docker-compose.yaml up -d --remove-orphans

stop:
	docker-compose -f docker-compose.yaml down

fix:
	docker network prune -f
	docker container prune -f

update: setup
	@git pull
	@./update.sh
	@docker-compose -f docker-compose.yaml pull
	docker-compose -f docker-compose.yaml up -d --force-recreate

copy:
	docker cp clouddesktop:/my_ros_data rospersistent
