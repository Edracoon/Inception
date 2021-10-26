all:
		cd srcs && docker-compose up -d --build
down:
		cd srcs && docker-compose down

clean:
		docker system prune -a -f