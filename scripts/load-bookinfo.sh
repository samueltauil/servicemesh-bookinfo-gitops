#/bin/#!/usr/bin/env bash

export GATEWAY_URL=$(oc -n istio-system get route istio-ingressgateway -o jsonpath='{.spec.host}')
echo $GATEWAY_URL/productpage
while :; do curl -s $GATEWAY_URL/productpage | grep -o "<title>.*</title>"; sleep 0.3; done
