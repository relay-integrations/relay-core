{{- $PackageFileName := printf "nebula_sdk-%s-py3-none-any.whl" (.SDKVersion | trimPrefix "v") -}}
{{- $PackageRepoURL := printf "https://packages.nebula.puppet.net/sdk/support/python/%s" .SDKVersion -}}

FROM python:3-alpine
RUN apk --no-cache add bash ca-certificates curl git jq openssh && update-ca-certificates
RUN pip --no-cache-dir install "{{ printf "%s/%s" $PackageRepoURL $PackageFileName }}"
