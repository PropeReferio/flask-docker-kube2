FROM python:3-alpine
RUN mkdir /my_flask_app
WORKDIR /my_flask_app
COPY requirements.txt /my_flask_app
RUN pip install -r requirements.txt
COPY . /my_flask_app
EXPOSE 5000
CMD [ "python", "app.py" ]