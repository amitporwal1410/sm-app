FROM nginx:alpine
COPY Testfile.sh .
COPY . /usr/share/nginx/html
#CMD ["mkdir", "myNewDir"]
