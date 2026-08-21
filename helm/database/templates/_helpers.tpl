{{- define "notes-db.name" -}}
{{ .Chart.Name }}
{{- end }}


{{- define "notes-db.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}


{{- define "notes-db.labels" -}}
app.kubernetes.io/name: {{ include "notes-db.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}
