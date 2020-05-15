FROM python:3.6-alpine
COPY . /app
WORKDIR /app
RUN git pull origin master
RUN pip install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD ["demo.py"]