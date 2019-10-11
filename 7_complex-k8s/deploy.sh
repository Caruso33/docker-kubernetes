docker build -t caruso33/multi-client:latest -t caruso33/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t caruso33/multi-server:latest -t caruso33/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t caruso33/multi-worker:latest -t caruso33/multi-worker:$SHA -f ./worker/Dockerfile ./workers

docker push caruso33/multi-client:latest
docker push caruso33/multi-server:latest
docker push caruso33/multi-worker:latest

docker push caruso33/multi-client:$SHA
docker push caruso33/multi-server:$SHA
docker push caruso33/multi-worker:$SHA

kubect apply -f k8s

kubectl set image deployments/client-deployment client=caruso33/multi-client:$SHA
kubectl set image deployments/server-deployment server=caruso33/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=caruso33/multi-worker:$SHA