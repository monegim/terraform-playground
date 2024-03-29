#/bin/bash
gitlab-terraform init   \
      -backend-config="address=$TF_ADDRESS" \
      -backend-config="lock_address=$TF_ADDRESS/lock" \
      -backend-config="unlock_address=$TF_ADDRESS/lock" \
      -backend-config="username=gitlab-ci-token" \
      -backend-config="password=${CI_JOB_TOKEN}" \
      -backend-config="lock_method=POST" \
      -backend-config="unlock_method=DELETE" \
      -backend-config="retry_wait_min=5"