FROM nikolaik/python-nodejs AS builder

# ARG CONF_FILE
WORKDIR /usr/src
COPY . .
RUN    node -v; \
    npm cache clear --force; \
    npm install; \
    npm run build; \
    ls -al; 

FROM nikolaik/python-nodejs

COPY --from=builder /usr/src/* /usr/src/*
COPY --from=builder /usr/src/runtime/run.sh /usr/bin/run.sh

RUN chmod +x /usr/bin/run.sh

ENTRYPOINT [ "run.sh" ]
