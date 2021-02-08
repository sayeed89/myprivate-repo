SAUCE_USERNAME='sayeed89'
SAUCE_APP_API_KEY='504ADDD26B41488B8BEBD3F839A086A6'

TEST_APP_ID=$(curl -u "$SAUCE_USERNAME:$SAUCE_APP_API_KEY" -X POST https://app.testobject.com:443/api/storage/upload -H "Content-Type: application/octet-stream" --data-binary @./calcy.ipa 2>/dev/null)

echo "$TEST_APP_ID"
