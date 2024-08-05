{{- define "randAlphaNum" -}}
{{- $letters := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" -}}
{{- $length := 32 -}}
{{- $result := "" -}}
{{- range until $length -}}
  {{- $index := randInt 0 (len $letters) -}}
  {{- $result = print $result (index $letters $index) -}}
{{- end -}}
{{- $result -}}
{{- end -}}
