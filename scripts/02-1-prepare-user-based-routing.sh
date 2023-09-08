#/bin/#!/usr/bin/env bash


# setting up v2 for user samuel
curl -s https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml | sed 's/exact: jason/exact: samuel/' | oc apply -f -
