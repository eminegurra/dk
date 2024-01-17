# Përdor imazhin OpenJDK 10 (JRE) në një version të ndezur (slim)
FROM openjdk:11

# Navigo në direktorinë e punës
WORKDIR /app

# Kopjo skedarin JAR të aplikacionit nga folderi target
COPY target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar /app

# Ekspozoni portin 8080 (në rast se aplikacioni juaj dëshiron të dëgjojë në këtë port)
EXPOSE 8080

# Përcakto komandën për të filluar aplikacionin
CMD ["java", "-jar", "RandomNumberGenerator-0.0.1-SNAPSHOT.jar"]
