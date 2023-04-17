curl \
-H "Content-type: application/json" \
-H "Authorization:key=AAAA4BHW5Dw:APA91bH8AYp83gSU9UN690hPUiFRQn-v6kNGo0qYR98M-FEkMvf1B679LQZFzzPKYgW6EZlFMISgQMlBr_O-H0XfiuuhCvIXGKdVYmqNPBUvy9szao7CCnE0CBOq5HaOC0ogLXc6ETxl" \
-X POST \
-d '{
"to" : "fwx48SjBRuanpYlgpfuZVI:APA91bEtYjGT9-ZnhazBUQeZ1lNmmSb7hdqEwkB2mqFmhlvFSMNh9BEhjVSTat1btESM4B4bYjR_O0tLeWprFOAo1tdu4x4IiNSH3D6HhBo0eqs9w0WXsM_GPM4oeoOEXJRFq6S2Gy3P"
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