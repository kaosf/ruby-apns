filename = 'put your .pem filename'
token = 'put your device token (64 hex characters)'
sandbox = true
#sandbox = false

require 'apns'

APNS.pem = filename
APNS.host = 'gateway.push.apple.com' unless sandbox
APNS.send_notification token,
  alert: 'Alert Title',
  badge: 999,
  sound: 'default'
