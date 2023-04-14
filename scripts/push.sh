curl \
-H "Content-type: application/json" \
-H "Authorization:key=AAAA4BHW5Dw:APA91bH8AYp83gSU9UN690hPUiFRQn-v6kNGo0qYR98M-FEkMvf1B679LQZFzzPKYgW6EZlFMISgQMlBr_O-H0XfiuuhCvIXGKdVYmqNPBUvy9szao7CCnE0CBOq5HaOC0ogLXc6ETxl" \
-X POST \
-d '{
"to" : "d1LcqYhFREOYb3S6T8hVqM:APA91bF56k67itYcv8k19BOfSNxmNHs4jqPAPsVbjkYgHq1TmQ_n8tKakOgYo9kMS7u4nWV89Zs1xn6r90DFSJJO5_rI4TOkBU3cHBoY88fiLeHEljPJmry0Y3tm4mos926pxzve9SPJ"
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