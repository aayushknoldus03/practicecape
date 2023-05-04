FROM python:slim
COPY . .
RUN pip install Flask Flask-SQLAlchemy
CMD ["python3","app.py"] 
