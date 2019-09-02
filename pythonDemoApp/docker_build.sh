# Create Docker File
REPO="gcprishipractice01/publicrepo"
VERSION="v0.0.1"
cat <<EOT >Dockerfile
FROM python:3
ADD  demoapp.py /app/demoapp.py
ADD requirement.txt /app/requirement.txt
RUN pip install -r /app/requirement.txt
CMD [ "python", "/app/demoapp.py" ]
EOT



#Build Image
sudo docker build -t $REPO:$VERSION -f ./Dockerfile .
sudo  docker push $REPO:$VERSION
sudo docker rmi  $REPO:$VERSION

