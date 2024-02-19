{{/* Define um nome e versão de Chart para uso nos labels. */}}
{{- define "xp4dev.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/* Labels para todos os manifestos */}}
{{- define "xp4dev.labels" -}}

{{- end }}

{{/* Selector labels */}}
{{- define "xp4dev.selectorLabels" -}}

{{- end }}
