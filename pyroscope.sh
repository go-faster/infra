#!/bin/bash

helm repo add pyroscope-io https://pyroscope-io.github.io/helm-chart

helm upgrade --install --namespace pyroscope --create-namespace --values pyroscope.values.yml pyroscope pyroscope-io/pyroscope
helm upgrade --install --namespace pyroscope --create-namespace pyroscope-ebpf pyroscope-io/pyroscope-ebpf
kubectl apply -f pyroscope.ingress.yml
