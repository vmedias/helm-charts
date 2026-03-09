{{- define "laravel-app.name" -}}
{{- .Values.name | default .Release.Name }}
{{- end }}

{{- define "laravel-app.tlsSecret" -}}
{{- if .Values.ingress.tlsSecretName }}
{{- .Values.ingress.tlsSecretName }}
{{- else }}
{{- include "laravel-app.name" . }}-tls
{{- end }}
{{- end }}
