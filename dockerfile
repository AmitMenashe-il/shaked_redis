FROM python
WORKDIR /app
COPY redisapp.py requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 80
CMD python redisapp.py

