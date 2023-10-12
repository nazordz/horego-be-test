# Horego Test by Naufal

## Requirements
1. php 8.2
2. mysql 8

## Steps to instal;
1. install dependecies.
```bash
composer install
```
2. copy `.env` and then configure your new `.env`.
```bash
cp .env.example .env
```

3. Import sql file `dump-horego-202310130200.sql` to your mysql db or run migration. 
```bash
php artisan migrate
```

4. Run seeder to create `admin` and dummy data for you (this is optional but if you imported `dump-horego-202310130200.sql` you don't need to do this).
```bash
php artisan db:seed
```

5. Run dev server.
```bash
php artisan serve
```

6. Import `horego-test.postman_collection.json` to postman (optional) 
