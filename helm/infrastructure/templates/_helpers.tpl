{{- define "notes-infra.name" -}}
{{ .Chart.Name }}
{{- end }}


{{- define "notes-infra.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}


{{- define "notes-infra.labels" -}}
app.kubernetes.io/name: {{ include "notes-infra.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}
