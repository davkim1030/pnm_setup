docker build -t pnm ./
docker run -it -p80:80 --name pnm_server pnm
