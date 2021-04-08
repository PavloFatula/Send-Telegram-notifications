# Send-Telegram-notifications
this script is sending notification to telegram bot upon invocation


# To make it run you need to change Execution Policy:
1. run PowerShell as Admin
2. Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Create telegram bot and chat: 
## Get token 
Create Bot use BotFather in telegram, replace token with your value

## Get chat_id
create chat and add bot there. send few masseges
go to https://api.telegram.org/bot<YourBOTToken>/getUpdates and copy chat_id 
