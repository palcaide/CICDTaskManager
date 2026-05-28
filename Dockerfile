# 1. Imagen base oficial con Java 21 en Linux Alpine (ligero)
FROM eclipse-temurin:21-jre-alpine

# 2. Carpeta de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos tu JAR real (fíjate en el nombre exacto que saca tu pom.xml)
COPY target/gestor-tareas-1.0-SNAPSHOT.jar app.jar

# 4. Abrimos el puerto estándar
EXPOSE 8080

# 5. Arrancamos el gestor de tareas al encender el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]