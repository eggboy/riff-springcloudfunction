export SERVICE_IP=`kubectl get svc knative-ingressgateway -n istio-system -o jsonpath="{.status.loadBalancer.ingress[*].ip}"`

riff service invoke function-riff  --   --header "Content-type: text/plain" -d "hello knative"

