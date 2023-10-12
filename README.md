# Horego Test by Naufal

## Requirements
1. php 8.2
2. mysql 8

## Steps to instal;
1. install dependecies
```bash
composer install
```
2. copy `.env` and then configure your new `.env`
```bash
cp .env.example .env
```

3. Import sql file `horego.sql` to your mysql db or run migration (users are included). 
```bash
php artisan migrate
```

4. Run seeder (optional) to create `admin` user for you to login.
```bash
php artisan db:seed
```

5. Run dev server
```bash
php artisan serve
```
