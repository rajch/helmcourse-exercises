{{/* Returns either included or provided MySQL service name */}}
{{- define "dbapp.serviceName" -}}
{{- if (index .Values.tags "include-db") -}}
{{- .Release.Name }}-mysql-svc
{{- else -}}
{{- required "dbServiceName must be provided if tags.include-db is false" .Values.dbServiceName -}}
{{- end -}}
{{- end -}}