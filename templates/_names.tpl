{{/*
   * Definição do nome.
   */}}
{{- define "xp4dev.name" -}}
{{- default .Release.Name .Values.application.name | trunc 63 | trimSuffix "-" }}
{{- end }}
