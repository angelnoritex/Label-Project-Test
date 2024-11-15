#!/bin/bash

docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<123Jhon@>" \
   -p 1433:1433 --name sql1 --hostname sql1 \
   -d \
   mcr.microsoft.com/mssql/server:2022-latest


# cambio de contreña
docker exec -it sql1 /opt/mssql-tools18/bin/sqlcmd \
-S localhost -U SA \
 -P "$(read -sp "Enter current SA password: "; echo "${REPLY}")" \
 -Q "ALTER LOGIN SA WITH PASSWORD=\"$(read -sp "Enter new SA password: "; echo "${REPLY}")\""


# logs
docker exec -t sql1 cat /var/opt/mssql/log/errorlog | grep connection

docker exec -it sql1 "bash"

sudo docker exec -it --user root sql1 "bash"
apt-get update && apt-get install -y mssql-tools unixodbc-dev

export PATH="$PATH:/opt/mssql-tools/bin"
sqlcmd -?


/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "<123Jhon@>"

# create new database
docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "<123Jhon@>" \
   -Q "CREATE DATABASE TestDB"

# list all databases
docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "<123Jhon@>" \
   -Q "SELECT name FROM sys.databases"

docker stop sql1 && docker rm sql1



