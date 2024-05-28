FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN miladshahhi create-db
RUN miladshahhi populate-db
RUN miladshahhi add-user -u admin -p admin
EXPOSE 5000
CMD ["miladshahhi", "run"]
