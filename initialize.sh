docker-compose down
docker-compose up -d
docker exec -it $(docker ps -q -f name=laravel_php) cp .env.example .env
docker exec -it $(docker ps -q -f name=laravel_php) composer install --prefer-dist
docker exec -it $(docker ps -q -f name=laravel_php) php artisan key:generate
docker exec -it $(docker ps -q -f name=laravel_php) php artisan migrate
echo initialized.  Access http://localhost:7070