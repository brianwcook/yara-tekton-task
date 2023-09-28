# yara-tekton-task

Add this block to the pipeline def in order to run pipeline task.

```

taskRef:
  resolver: git
  params:
  - name: url
    value: https://github.com/brianwcook/yara-tekton.git
  - name: revision
    value: main
  - name: pathInRepo
    value: 0.1/yara-scan.yaml
