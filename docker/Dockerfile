ARG PYTHON_VERSION=3.7
FROM registry.cn-shanghai.aliyuncs.com/shuzhi-amd64/suanpan-python-sdk:${PYTHON_VERSION}-slim

WORKDIR /code
COPY ./ .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "bash" ]
