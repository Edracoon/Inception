all:
		cd srcs && docker-compose up --build
down:
		cd srcs && docker-compose down -v

clean:
		docker system prune -a --volumes -f
		rm -rf volume_test/mysql/*
		rm -rf volume_test/wordpress_nginx/*
