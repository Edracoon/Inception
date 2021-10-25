all:
		cd srcs && docker-compose up -d --build
down:
		cd srcs && docker-compose down
		docker system prune -f