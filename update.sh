#!/bin/sh

# Build
docker build . --squash -t mytardis/k8s-nginx:latest

# Push
docker push mytardis/k8s-nginx:latest

# Update
kubectl -n ingress-nginx scale deployment.apps/nginx-ingress-errors --replicas=0
sleep 3
kubectl -n ingress-nginx scale deployment.apps/nginx-ingress-errors --replicas=1

# Watch
watch kubectl -n ingress-nginx get pods
