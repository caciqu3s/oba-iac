gcloud auth login
gcloud config set project obd-stage

gcloud iam service-accounts create sa-pipeline \
    --display-name "Service Account for pipeline execution"

gcloud projects add-iam-policy-binding obd-stage \
    --member='serviceAccount:sa-pipeline@obd-stage.iam.gserviceaccount.com' --role='roles/editor'

gcloud projects add-iam-policy-binding obd-stage \
    --member='serviceAccount:sa-pipeline@obd-stage.iam.gserviceaccount.com' --role='roles/logging.logWriter'
