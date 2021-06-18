FROM ruby:2.5.3
RUN apt-get update

WORKDIR /app

COPY entrypoint.sh .

# start app
# CMD ["java", "-jar", "jarch.jar"]
CMD ["bash", "entrypoint.sh"]