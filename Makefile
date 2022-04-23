include ./srcs/.env

HOME=/home/ybolles

# Colors variables
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
RESET = \033[0m

all: credit hosts rmv volumes run

hosts:
	@sudo echo "127.0.0.1       " $(DOMAIN_NAME) >> /etc/hosts

run:
	@echo "$(GREEN)################### Building && Running Containers ################### $(RESET)"
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	@echo "$(RED)██████████████████ Removing All Containers ██████████████████$(RESET)"
	docker-compose -f ./srcs/docker-compose.yml down

reload: down rmv build up

rm: rmv down
	@echo "$(RED)█████████████████████ Remove Everything ██████████████████████$(RESET)"
	docker system prune -a
	
rmv:
	@echo "$(RED)█████████████████████ Deleting volumes ██████████████████████$(RESET)"
	sudo rm -rf $(HOME)/data

volumes:
	@echo "$(GREEN)█████████████████████ Creating volumes ██████████████████████$(RESET)"
	mkdir -p /Users/ysrbolles/Desktop/incep/db
	mkdir -p /Users/ysrbolles/Desktop/incep/wp


# Print Credit
credit:
	@echo "██╗███╗   ██╗ ██████╗███████╗██████╗ ████████╗██╗ ██████╗ ███╗   ██╗"
	@echo "██║████╗  ██║██╔════╝██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║"
	@echo "██║██╔██╗ ██║██║     █████╗  ██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║"
	@echo "██║██║╚██╗██║██║     ██╔══╝  ██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║"
	@echo "██║██║ ╚████║╚██████╗███████╗██║        ██║   ██║╚██████╔╝██║ ╚████║"
	@echo "╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━┃Made with love by : \033[1;91ybolles\033[m┃━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"