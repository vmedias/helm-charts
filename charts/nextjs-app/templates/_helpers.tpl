{{- define "nextjs-app.name" -}}
{{- .Values.name | default .Release.Name }}
{{- end }}

{{- define "nextjs-app.tlsSecret" -}}
{{- if .Values.ingress.tlsSecretName }}
{{- .Values.ingress.tlsSecretName }}
{{- else }}
{{- include "nextjs-app.name" . }}-tls
{{- end }}
{{- end }}
