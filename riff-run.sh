export SERVICE_IP=`kubectl get svc knative-ingressgateway -n istio-system -o jsonpath="{.status.loadBalancer.ingress[*].ip}"`
echo $SERVICE_IP
#riff service invoke function-riff  --   --header "Content-type: text/plain" -d "Jay"
curl -w '\n'  -H 'Host: function-riff.default.example.com' -H 'Content-Type: text/plain' http://$SERVICE_IP -d "Jay"
curl -H "Host: helloworld-go.default.example.com" http://$SERVICE_IP
