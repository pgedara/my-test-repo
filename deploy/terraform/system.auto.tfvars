destination_namespace = "argocd-license-staging"
app_name = "license-staging"
helm_source_path = "deployment/helm/de-license-server"
target_revision = "master"
image_tag = ${TAG}