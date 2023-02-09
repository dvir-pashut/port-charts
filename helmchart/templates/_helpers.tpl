{{- define "imagePullSecret" }}
{{- with .Values.mongodb.credentials }}
{{- printf "{\"auths\":{\"%s\":{\"rootUser\":\"%s\",\"rootPassword\":\"%s\",}}}"  .rootUser .rootPassword  (printf "%s:%s" .rootUser .rootPassword | b64enc) | b64enc }}
{{- end }}
{{- end }}
