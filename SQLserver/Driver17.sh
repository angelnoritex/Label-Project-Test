
# debian
# Import the public repository GPG keys
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft SQL Server repository
sudo curl -o /etc/apt/sources.list.d/mssql-release.list https://packages.microsoft.com/config/debian/$(lsb_release -rs)/prod.list

# Update the package list
sudo apt-get update

# Install the msodbcsql17 package
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql17

# Importa la clave GPG pública del repositorio
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Registra el repositorio de Microsoft SQL Server
sudo curl -o /etc/apt/sources.list.d/mssql-release.list https://packages.microsoft.com/config/debian/$(lsb_release -rs)/prod.list

# Actualiza la lista de paquetes
sudo apt-get update

# Acepta el EULA e instala mssql-tools
sudo ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev

# Añade mssql-tools al PATH para facilitar su uso
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc



# for ubuntu
if ! [[ "16.04 18.04 20.04 22.04" == *"$(lsb_release -rs)"* ]];
then
    echo "Ubuntu $(lsb_release -rs) is not currently supported.";
    exit;
fi

curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc

curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list

sudo apt-get update lsb-release
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql17

# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install -y mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

# optional: for unixODBC development headers
sudo apt-get install -y unixodbc-dev