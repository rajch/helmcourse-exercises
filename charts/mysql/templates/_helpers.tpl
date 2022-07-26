{{/* Labels to be included with every object */}}
{{- define "mysql.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instace: {{ .Release.Name }}
{{- end -}}