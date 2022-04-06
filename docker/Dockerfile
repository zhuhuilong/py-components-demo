ARG PYTHON_VERSION=3.7
FROM itools-harbor.weichai.com/suanpan/shuzhi-amd64/suanpan-python-sdk:${PYTHON_VERSION}-slim

WORKDIR /code
COPY ./ .

RUN pip install --no-cache-dir -r requirements.txt -i  http://mirrors.weichai.com/repository/pypi/simple/   --trusted-host mirrors.weichai.com

CMD [ "bash" ]
