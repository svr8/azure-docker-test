FROM python:3.6-alpine
COPY . /app
WORKDIR /app
RUN apk add git
RUN git pull origin master
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT [ "python" ]
CMD ["demo.py"]