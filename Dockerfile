FROM python:3.6-alpine
COPY . /app
WORKDIR /app
RUN apt install git-all
RUN git init
RUN git pull https://github.com/svr8/azure-docker-test
RUN pip install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD ["demo.py"]