apiVersion: tekton.dev/v1beta1
kind: TaskRun
metadata:
  name: yara-scan
spec:
  taskRef:
    resolver: git
    params:
    - name: url
      value: https://github.com/brianwcook/yara-tekton-task.git
    - name: revision
      value: main
    - name: pathInRepo
      value: yara-task.yaml
