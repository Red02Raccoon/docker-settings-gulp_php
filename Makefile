docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose up --build -d

assets-install:
	docker exec ug-design_node_1 yarn install

assets-dev:
	docker exec ug-design_node_1 yarn run dev

assets-watch:
	docker exec ug-design_node_1 yarn run watch

perm:
	sudo chmod 777 app -R
	if [ -d "node_modules"]; then sudo chown ${USER}:${USER} node_modules -R; fi