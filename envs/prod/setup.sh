gcloud auth login
gcloud config set project obd-prod

gcloud iam service-accounts create sa-pipeline \
    --display-name "Service Account for pipeline execution"

gcloud iam service-accounts add-iam-policy-binding sa-pipeline@obd-prod.iam.gserviceaccount.com \
    member='serviceAccount:sa-pipeline@obd-prod.iam.gserviceaccount.com' --role='roles/editor'