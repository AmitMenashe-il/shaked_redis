# use minimal image
FROM python:3.8.2-alpine
WORKDIR /app
COPY redisapp.py requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 80
#use array with quotes - for easier reading and possible spaces in flags
CMD ["python", "app.py"] 
