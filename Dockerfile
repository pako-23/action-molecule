FROM python:3.14-slim

RUN pip install molecule==26.6.0 molecule-plugins[docker]==26.7.15 ansible==12.3.0

ENTRYPOINT ["molecule", "test"]
