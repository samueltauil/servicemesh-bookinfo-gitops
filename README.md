# Service Mesh and bookinfo gitops demo for OpenShift

## Bootstrap

First we need to install the OpenShift GitOps Operator:

```
oc apply -k gitops/manifests/bootstrap/openshift-gitops-operator/base
```

Now we have to configure the operator, creating a project and configure some permissions:

```
oc apply -k gitops/manifests/bootstrap/openshift-gitops/base
```
