
# Instalar dependencias
sudo apt-get install wget gpg

# Descargar e instalar la clave de Microsoft
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

# Agregar el repositorio de VS Code
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

# Eliminar el archivo de clave temporal
rm -f packages.microsoft.gpg

# Actualizar el caché del paquete e instalar VS Code
sudo apt install apt-transport-https
sudo apt update
sudo apt install code 
