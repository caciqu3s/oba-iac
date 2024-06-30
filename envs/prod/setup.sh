gcloud auth login
gcloud config set project obd-prod

gcloud iam service-accounts create sa-pipeline \
    --display-name "Service Account for pipeline execution"

gcloud projects add-iam-policy-binding obd-prod \
    --member='serviceAccount:sa-pipeline@obd-prod.iam.gserviceaccount.com' --role='roles/editor'

gcloud projects add-iam-policy-binding obd-prod \
    --member='serviceAccount:sa-pipeline@obd-prod.iam.gserviceaccount.com' --role='roles/logging.logWriter'
