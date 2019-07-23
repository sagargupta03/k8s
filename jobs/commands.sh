#!/bin/bash

# Create the job
kubectl create -f singjob.yaml

# Job will take some time to execute
# check the logs of the container
# You will see the 10 keys generated by the job.
kubectl logs <Pod Name>

# Now create another job where we will fail the job
kubectl create -f singlejobfail.yaml

# Now check the pod status. You will see that is restarting again and again
kubectl get pods -l job-name=oneshot
