include ./srcs/.env

HOME=/home/ybolles

# Colors variables
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
RESET = \033[0m

all:  hosts rmv volumes run

hosts:
	@sudo echo "127.0.0.1       " $(DOMAIN_NAME) >> /etc/hosts

run:
	@echo "$(GREEN)################### Running Containers ################### $(RESET)"
	@docker-compose -f ./srcs/docker-compose.yml up -d 

down:
	@echo "$(RED)################## Removing All Containers ##################$(RESET)"
	docker-compose -f ./srcs/docker-compose.yml down

reload: down rmv run

rm: rmv down
	@echo "$(RED)##################### Remove Everything ######################$(RESET)"
	docker system prune -f && docker volume prune -f
	docker rmi -f $(docker images -qa)
	docker rm -f $(docker ps -qa)
	
rmv:
	@echo "$(RED)##################### Deleting volumes ######################$(RESET)"
	docker volume prune -a && docker volume rm $(docker volume ls)

volumes:
	@echo "$(GREEN)##################### Creating volumes ######################$(RESET)"
	mkdir -p $(HOME)/data
	mkdir -p $(HOME)data/db
	mkdir -p $(HOME)data/wp