#!/bin/bash

helm repo add pyroscope-io https://pyroscope-io.github.io/helm-chart

helm upgrade --install pyroscope pyroscope-io/pyroscope --namespace pyroscope --create-namespace --values pyroscope.values.yml
kubectl apply -f pyroscope.ingress.yml
