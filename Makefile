all:
		cd srcs && docker-compose up --build
down:
		cd srcs && docker-compose down
#		rm -rf volume_test/mysql/*
#		rm -rf volume_test/wordpress_nginx/*

clean:
		docker system prune -a -f