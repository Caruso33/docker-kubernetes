#! /bin/bash
docker build -t tag_name . -f Dockerfile.prod &&
docker tag tag_name gcr.io/my_domain/tag_name:v39 &&
docker push gcr.io/my_domain/tag_name:v39 &&
kubectl apply -f kubernetes/web-deployment.yml && kubectl get pods -w