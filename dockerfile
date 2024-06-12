FROM python:3.8-slim

#set up work dir
WORKDIR /app

#copy project files to work dir
COPY . /app

#install dependencies
RUN pip install -r requirements.txt

# 使端口80可用于世界范围内的连接
EXPOSE 80

# 定义环境变量
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# 指定启动命令
CMD ["flask", "run", "--host=0.0.0.0"]