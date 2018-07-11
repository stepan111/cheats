#Using zabbix api with python
import requests
zabbix_url = 'http://vi-sky-pjbx1.aws.modeln.com:3000/api_jsonrpc.php'
headers = {'Content-Type': 'application/json-rpc'}

# get api version
payload = {"jsonrpc":"2.0","method":"apiinfo.version","id":1 ,"params":{}}
r = requests.post(zabbix_url,json=payload,headers=headers)
r.json()

# Get session token
user_login = {"jsonrpc":"2.0","method":"user.login","params": {"user": "Admin","password": "zabbix"},"id": 1}
r = requests.post(zabbix_url,json=user_login,headers=headers)
r.ok
r.json()
token = r.json()['result']

# Create trigger
create_trigger = {"jsonrpc":"2.0","method":"trigger.create","params": {"description": "test api trigger", "expression": "{vi-sky-capp7.aws.modeln.com:system.users.num.last(,1)}=0 and {vi-sky-capp7.aws.
modeln.com:web.page.regexp[127.0.0.1,ViewObjectRes//com.modeln:name=System,7025,\"^.*Active sessions:.([0-9]+)<.*$\",,\\1].last(,5)}=0" },"id": 2, "auth": token }
r = requests.post(zabbix_url,json=create_trigger,headers=headers)
r.json()
