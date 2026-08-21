{{- define "notes-be.name" -}}
{{ .Chart.Name }}
{{- end }}


{{- define "notes-be.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}


{{- define "notes-be.labels" -}}
app.kubernetes.io/name: {{ include "notes-be.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}
