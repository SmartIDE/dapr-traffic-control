# VMLC Demo

## Deploy

```shell
kubectl apply -f smartide-vscode-v2-vmlc.yaml 
```

## Connect

```shell

## connect to terminal
kubectl exec -i -t -n default smartide-dev-container -c smartide-dev-container "--" sh -c "clear; (bash || ash || sh )"

## switch to smartide user
su smartide
```

## Clone Code

```shell
## 确保使用smartide用户，进入用户默认目录 /home/smartide
git clone https://github.com/SmartIDE/sample-dapr-traffic-control.git
```

## Port-Forward VSCode, DebugPort & SSH

```shell
kubectl port-forward smartide-dev-container 6800:3000
kubectl port-forward smartide-dev-container 6822:22
kubectl port-forward smartide-dev-container 5000:5000
kubectl port-forward smartide-dev-container 4000:4000
```

## 打开VSCode WebIDE进行self-hosted模式调试

参考 https://smartide.cn/zh/blog/2022-0601-dapr/ 

## 进行k8s模式调试

启动k8s集群

```shell
kind create cluster --image registry.cn-hangzhou.aliyuncs.com/smartide/nestybox-kindestnode:v1.20.7
```