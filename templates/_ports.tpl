{{/* template para fragmentos do ports: lifecicle */}}
{{- define "xp4dev.container-ports" -}}
ports:
  {{- with .Values.ports }}
  - name: {{ .name }}
    containerPort: {{ .container }}
    protocol: {{ .protocol }}
  {{- end }}
{{- end }}

{{/* template para fragmentos do ports: lifecicle */}}
{{- define "xp4dev.service-ports" -}}
ports:
  {{- with .Values.ports }}
  - name: {{ .name }}
    port: {{ .service }}
    targetPort: {{ .name }}
    protocol: {{ .protocol }}
  {{- end }}
{{- end }}