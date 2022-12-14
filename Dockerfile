# This is a sample Dockerfile

# set base image python:3.8-slim-buster
FROM python:3.8

# set working directory
WORKDIR /usr/src/app

# copy all items in current local directory (source) to current container directory (destination)
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# command to run when image is executed inside a container
CMD [ "python3", "app.py" ]