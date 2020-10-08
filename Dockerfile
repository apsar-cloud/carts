FROM schoolofdevops/carts-maven


WORKDIR /opt/carts

COPY . .

RUN mvn package -D skipTests \
    && mv target/carts.jar /run \
	&& rm -rf /opt/carts/*

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
