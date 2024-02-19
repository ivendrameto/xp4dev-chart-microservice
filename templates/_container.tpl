{{/* template para fragmentos do container: lifecicle */}}
{{- define "xp4dev.lifecycle" -}}
{{- if .Values.urls.preStop -}}
lifecycle:
  preStop:
    httpGet:
      path: {{ .Values.urls.preStop }}
      port: http
      scheme: HTTP
{{- else -}}
# Lifecycle
{{- end -}}
{{- end }}

{{/* template para fragmentos do container: readiness */}}
{{- define "xp4dev.readiness" -}}
{{- if .Values.urls.readiness -}}
readinessProbe:
  httpGet:
    path: {{ .Values.urls.readiness }}
    port: http
    scheme: HTTP
  periodSeconds: 10
  failureThreshold: 20
  initialDelaySeconds: 60
{{- else -}}
# Readiness
{{- end -}}
{{- end }}

{{/* template para fragmentos do container: liveness */}}
{{- define "xp4dev.liveness" -}}
{{- if .Values.urls.liveness -}}
livenessProbe:
  httpGet:
    path: {{ .Values.urls.liveness }}
    port: http
    scheme: HTTP
  periodSeconds: 20
  failureThreshold: 30
  initialDelaySeconds: 120
{{- else -}}
# Liveness
{{- end -}}
{{- end }}

{{/* template para fragmentos do container: resources */}}
{{- define "xp4dev.resources" -}}
resources:
  limits:
{{- if .Values.resources.limits }}
    cpu: {{ default "50m" .Values.resources.limits.cpu }}
    memory: {{ default "128Mi" .Values.resources.limits.memory }}
{{- else }}
    cpu: 100m
    memory: 128Mi
{{- end }}
  requests:
{{- if .Values.resources.requests }}
    cpu: {{ default "50m" .Values.resources.requests.cpu }}
    memory: {{ default "128Mi" .Values.resources.requests.memory }}
{{- else }}
    cpu: 50m
    memory: 64Mi
{{- end }}
{{- end }}