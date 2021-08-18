docker build . -t testimage
docker run -d --name testapp testimage
docker rm --force testapp
docker top testapp -a