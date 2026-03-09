{{- define "symfony-app.name" -}}
{{- .Values.name | default .Release.Name }}
{{- end }}

{{- define "symfony-app.tlsSecret" -}}
{{- if .Values.ingress.tlsSecretName }}
{{- .Values.ingress.tlsSecretName }}
{{- else }}
{{- include "symfony-app.name" . }}-tls
{{- end }}
{{- end }}
