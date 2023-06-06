
FROM python:3.8-slim-buster

RUN apt-get update

# create a owrkign dir / env for the project
WORKDIR  /app

#  copy requirements file from current dir to the specified working dir
COPY . .

#  run install pip in thw working dir
RUN pip3 install -r requirements.txt

CMD ["python3", "-m" , "pytest" ]

