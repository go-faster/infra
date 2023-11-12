#!/bin/bash

# https://opentelemetry.io/docs/demo/kubernetes-deployment/
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts

helm upgrade --install --create-namespace --namespace otel --values otel-demo.values.yml demo open-telemetry/opentelemetry-demo
