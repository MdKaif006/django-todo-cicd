FROM python:3

ENV  source env/bin/activate

RUN pip install django==3.2

COPY . .

CMD ["python","manage.py","makemigrations"]

CMD ["python"," manage.py","migrate"]

CMD ["python","manage.py","runserver","0.0.0.0:8001"]


