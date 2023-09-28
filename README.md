# yara-tekton-task

Add this block to the pipeline def in order to run pipeline task.

```
apiVersion: tekton.dev/v1beta1
kind: TaskRun
metadata:
  name: git-clone-demo-tr
spec:
  taskRef:
    resolver: git
    params:
    - name: url
      value: https://github.com/brianwcook/yara-tekton.git
    - name: revision
      value: main
    - name: pathInRepo
      value: 0.1/yara-scan.yaml
