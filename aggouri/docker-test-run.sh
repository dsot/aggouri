docker build  -t aggouri .
docker run aggouri
docker cp `docker ps -l -q`:/app/docker-html-report.html docker-html-report.html