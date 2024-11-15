
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






### docs 

- [withDocker](https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&tabs=cli&pivots=cs1-bash)

https://learn.microsoft.com/es-es/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16&tabs=ubuntu18-install%2Cubuntu17-install%2Cdebian8-install%2Credhat7-13-install%2Crhel7-offline

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"



### ACCEPT_EULA
La flag ACCEPT_EULA se utiliza para aceptar el Acuerdo de Licencia de Usuario Final (EULA, por sus siglas en inglés) de Microsoft de manera automática. Esto es necesario para instalar ciertos paquetes de Microsoft, como msodbcsql17 y mssql-tools, que requieren la aceptación del EULA antes de proceder con la instalación.



[djangoexample](https://pedrodsferreira.github.io/django-mssql-docker/)