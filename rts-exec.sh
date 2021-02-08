CIRCLE_TOKEN='1234'
test_suite_pram=(login signup browse account buy sell)

        for i in "${test_suite_pram[@]}"
        do
                echo "curl -v -u ${CIRCLE_TOKEN}: -X POST --header "Content-Type: application/json" -d '{ "branch": "develop", "parameters": {"ios":true,"test_suite":"@$i","test_app_id_ios:$TEST_APP_ID"}}' https://circleci.com/api/v2/project/github/stockx/test-automation/pipeline"
        done
fi
