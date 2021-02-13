# Pretty print the json
jq "." < filename.json

# Access the value at key "foo"
jq '.foo'

# Access first list item
jq '.[0]'

# Slice & Dice
jq '.[2:4]'
jq '.[:3]'
jq '.[-2:]'

# Remove quotes
notebook : 12:57PM : terraform-infra :  » gcloud iam service-accounts list --format=json --filter="email ~ terraform" | jq '.[0].email'
"terraform@silent-eye-276318.iam.gserviceaccount.com"
notebook : 12:57PM : terraform-infra :  » gcloud iam service-accounts list --format=json --filter="email ~ terraform" | jq '.[0].email' -j
terraform@silent-eye-276318.iam.gserviceaccount.com%
