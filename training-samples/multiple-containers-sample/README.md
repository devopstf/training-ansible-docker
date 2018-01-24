# Assignment: Manage multiple containers

> Goal: Running and digging into multiple containers

- Run `nginx`, `mysql`, and `httpd`servers 
- Run all of them detached, and name them, using `--name`flag
- nginx shpuld listen on port `80`, httpd on `8080`, and mysql on standard port `3306`.
- When running `mysql`, use `--env`flag to pass in `MYSQL_RANDOM_ROOT_PASSWORD=yes`
- Get the randomly generated mysql root password from container logs (and try to connect to db using any OSS you decide, DBeaver).
- Ensure everything is correctly running.
- Clean it all up (stop, and remove containers).