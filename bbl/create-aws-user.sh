aws iam create-user --user-name $AWS_USER_FOR_CONTROL_PLANE
aws iam put-user-policy  \
	--user-name $AWS_USER_FOR_CONTROL_PLANE   \
	--policy-name $AWS_USER_FOR_CONTROL_PLANE-policy  \
	--policy-document file://policy.json

aws iam create-access-key --user-name $AWS_USER_FOR_CONTROL_PLANE
