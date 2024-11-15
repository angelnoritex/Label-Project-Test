
galose7675@cironex.com
licencie = VNRVEK193TAP9C4O


HOST=localhost
USER=SA 
PASS=<123Jhon@>
PORT=1433
hostConection=127.0.0.1,1433

## MSSMS



`error`
    > Cannot connect to MyServer
    A connection was successfully established with the server, but then an error occurred during the login process. (provider: SSL Provider, error: 0 - > The certificate chain was issued by an authority that is not trusted.) (Microsoft SQL Server, Error: -2146893019) For help, click: https://docs.microsoft.com/sql/relational-databases/errors-events/mssqlserver--2146893019-database-engine-error

    The certificate chain was issued by an authority that is not trusted

only go to contection options


docker exec -it apt-get update && \
    ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev && \
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc 