# Pega imagem Ubuntu
FROM ubuntu:20.04

# Atualiza ubunto e instala o apache2
RUN apt-get update && \
  apt-get -y install apache2

# Remover lixo do apt
RUN rm -rf /var/lib/apt/lists/*

# Copia o conteúdo do index.htm para a pasta do apache
COPY src/ /var/www/html/

# Expoe a port 80 do servidor apache
EXPOSE 80

# Inicializa o servidor apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
