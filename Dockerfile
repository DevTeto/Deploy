FROM DevTeto/thesource:slim-buster

RUN git clone https://github.com/DevTeto/thesource.git /root/DevTeto

WORKDIR /root/DevTeto

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/DevTeto/bin:$PATH"

CMD ["python3","-m","DevTeto"]
