#/bin/#!/usr/bin/env bash


# setting up all services to v1
oc apply -f https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-all-v1.yaml

# setting up v2 for users kadu
curl -s https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml | sed 's/exact: jason/exact: kadu/' | oc apply -f -

# create a fault injection rule to delay traffic coming from the test user kadu
curl -s https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-ratings-test-delay.yaml | sed 's/exact: jason/exact: kadu/' | oc apply -f -
