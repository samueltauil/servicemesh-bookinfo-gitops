#/bin/#!/usr/bin/env bash

# cleaning up leftovers
protos=( virtualservices )
for proto in "${protos[@]}"; do
  for resource in $(oc get -n bookinfo "$proto" -o name); do
    oc delete -n bookinfo "$resource";
  done
done

# setting up all services to v1
oc apply -f https://raw.githubusercontent.com/maistra/istio/maistra-2.1/samples/bookinfo/networking/virtual-service-all-v1.yaml
