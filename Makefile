all:
		cd srcs && docker-compose up --build
down:
		cd srcs && docker-compose down

clean:
		docker system prune -a -f