#/bin/#!/usr/bin/env bash


# setting up all services to v1
oc apply -f https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-all-v1.yaml
