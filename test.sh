kubectl delete pipelineRun yara-scan-pipeline
kubectl delete pipeline yara-scan-pipeline
kubectl delete tr yara-scan-pipeline-yara-task
kubectl delete tr yara-scan-pipeline-yara-scan
kubectl delete task yara-task
tkn taskrun delete yara-scan-pipeline-yara-task
sleep 1
kubectl apply -f 0.1/yara-task.yaml
kubectl apply -f yara-pipeline.yaml
kubectl apply -f yara-pipeline-run.yaml

echo "use"
echo "\ntkn pipelinerun logs yara-scan-pipeline -f\n"
echo "to follow logs."



