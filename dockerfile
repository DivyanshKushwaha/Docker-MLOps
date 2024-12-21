
# use the official python runtime as a parent image , FROM specifies the base image 
FROM python:3.8-slim 

# set the working directory in the ocntainer 
WORKDIR /app


# create the current directory contents into the container at /app
COPY . /app 

# install any needed packages specified in requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 availabel to the world outside this container 
EXPOSE 5000

# define environment variable 
ENV FLASK_APP=app.py 

# run the flask app 
CMD [ "flask","run","--host=0.0.0.0" ]

