{{/*
The labels module contains two named templates that can be used to provide
common labels to objects in charts.

common.labels should be used for most objects, especially podtemplates and
selectors.

common.fixedlabels should be used for objects that should not be upgraded
during a helm release upgrade. Includes common.labels. 

Both expect the root . object to be passed.
*/}}

{{/* Labels to be included with every object */}}
{{- define "common.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instace: {{ .Release.Name }}
{{- end -}}

{{/* Labels to be included with objects that should not be upgraded */}}
{{- define "common.fixedlabels" -}}
{{- include "common.labels" .}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}
