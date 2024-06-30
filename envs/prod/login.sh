gcloud auth login
gcloud config set project obd-prod
gcloud auth application-default login
export GOOGLE_OAUTH_ACCESS_TOKEN=$(gcloud auth application-default print-access-token)