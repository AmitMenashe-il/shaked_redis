from flask import Flask
import redis

app = Flask(__name__)
redis_client = redis.Redis(host='redis', port=6379)

@app.route('/')
def hello():
    redis_client.incr('visits_count')
    visits = int(redis_client.get('visits_count'))
    return f"Hello, visited {visits} times"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
