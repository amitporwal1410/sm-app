FROM nginx:alpine
COPY myfile.sh .
COPY . /usr/share/nginx/html
#CMD ["mkdir", "myNewDir"]
