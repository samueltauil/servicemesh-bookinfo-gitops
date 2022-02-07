# Service Mesh and bookinfo gitops demo for OpenShift

The idea of this repo is to use gitops to prepare an environment for a demo deploying Service Mesh and
the `bookinfo` sample application. We consider you have a fresh install of OpenShift.


## Bootstrap

First we need to install the OpenShift GitOps Operator:

```
oc apply -k gitops/manifests/bootstrap/openshift-gitops-operator/base
```

Now we have to configure the operator, creating a project and configure some permissions:

```
oc apply -k gitops/manifests/bootstrap/openshift-gitops/base
```

To deploy the `bookinfo` application we will be using the app of apps pattern:

```
oc apply -k gitops/manifests/content/demo/argocd/apps/bootstrap/base
```
