# Token
$token = "put-token-here"
$chat_idt = "put-chat-id-here"

#Payload
$text = "hello world !!"

# Telegram URLs
$URL_get = "https://api.telegram.org/bot$token/getUpdates"
$URL_set = "https://api.telegram.org/bot$token/sendMessage" 

function sendMessage($URL, $chat_id, $text)
{
	# send data thru HashTable
    $ht = @{
        text = $text
        parse_mode = "Markdown"
        chat_id = $chat_id
    }
    $json = $ht | ConvertTo-Json
    Invoke-RestMethod $URL -Method Post -ContentType 'application/json; charset=utf-8' -Body $json    
} 

#method call
sendMessage $URL_set $chat_idt $text