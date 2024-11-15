# Use the official Microsoft SQL Server 2019 image from the Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set environment variables
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=1234
#ENV MSSQL_PID=Express

# Expose the SQL Server port
EXPOSE 1433

RUN apt-get update
RUN apt-get install -y mssql-tools unixodbc-dev

# Run SQL Server process
CMD ["/opt/mssql/bin/sqlservr"]

