{{- define "notes-fe.name" -}}
{{ .Chart.Name }}
{{- end }}


{{- define "notes-fe.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}


{{- define "notes-fe.labels" -}}
app.kubernetes.io/name: {{ include "notes-fe.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}
