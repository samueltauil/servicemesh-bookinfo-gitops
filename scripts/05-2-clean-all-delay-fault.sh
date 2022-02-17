#/bin/#!/usr/bin/env bash


# remove all v1
oc delete -f https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-all-v1.yaml
