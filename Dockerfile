#Imagen base
FROM python:alpine

#Fecha y hora
RUN apk add -U tzdata
ENV TZ=America/Argentina/Buenos_Aires
RUN cp /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime

#Copiar a la carpeta /code del contenedor
ADD . /code

#Cambiar a la carpeta /code
WORKDIR /code

#Instalar los requerimientos del proyecto
RUN pip install -r reqs.txt

#Iniciar el webserver
CMD ["uvicorn", "main:app", "--host", "0.0.0.0","--port", "8080"]


