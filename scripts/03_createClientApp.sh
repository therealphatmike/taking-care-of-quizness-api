#!/bin/sh
ID=''
aws cognito-idp create-user-pool-client --region us-east-1 --user-pool-id ${ID} --client-name "quiznessAppClient" --generate-secret --refresh-token-validity 1 --read-attributes '[ "address","birthdate","email","email_verified","family_name","gender","given_name","locale","middle_name","name","nickname","phone_number","phone_number_verified","picture","preferred_username","profile","updated_at","website","zoneinfo"]' --write-attributes '[ "address","birthdate","email","family_name","gender","given_name","locale","middle_name","name","nickname","phone_number","picture","preferred_username","profile","updated_at","website","zoneinfo"]' --allowed-o-auth-flows "client_credentials" --allowed-o-auth-scopes "quizResourceServer/questions.read" "quizResourceServer/questions.write" --supported-identity-providers "COGNITO"
