
sudo apt-get install unixodbc unixodbc-dev


pip install pyodbc
pip install django-mssql-backend


sudo su /
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - /
curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/mssql-release.list /
exit /
sudo apt-get update /
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql17 

odbcinst -q -d -n "ODBC Driver 17 for SQL Server"


# filepath: /home/angel/ntx/test-label/dj/dj/settings.py
DATABASES = {
    'default': {
        'ENGINE': 'sql_server.pyodbc',
        'NAME': 'your_database_name',
        'USER': 'your_database_user',
        'PASSWORD': 'your_database_password',
        'HOST': 'your_database_host',
        'PORT': '',

        'OPTIONS': {
            'driver': 'ODBC Driver 17 for SQL Server',
        },
    }
}


### docs 

- [withDocker](https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&tabs=cli&pivots=cs1-bash)

https://learn.microsoft.com/es-es/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16&tabs=ubuntu18-install%2Cubuntu17-install%2Cdebian8-install%2Credhat7-13-install%2Crhel7-offline

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"