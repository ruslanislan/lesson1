source .env

curl \
-H "Content-type: application/json" \
-H "Authorization:key=$SERVER_KEY" \
-X POST \
-d '{
"to" : "'$TOKEN'"
"notification":{
"title":"Hello",
"body":"This is a text message!"
}
"data": {
"type": "city",
"cityName": "London",
},
}' \
https://fcm.googleapis.com/fcm/send