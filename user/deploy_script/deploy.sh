source ./deploy_script/setup.sh
gcloud config set project $PROJECT_ID

gcloud functions deploy $FUNCTION_NAME\
    --runtime python37\
    --trigger-http\
    --entry-point=user\
    --region=asia-east2\
    --set-env-vars=GAE_ENV=standard