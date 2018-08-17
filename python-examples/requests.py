
#requests
# http://docs.python-requests.org/en/master/api/#requests.Response
import requests
from requests.auth import HTTPBasicAuth
jenkins_url = 'http://cloud-control.aws.modeln.com:8080/view/Yolka2/job/Yolka2-stop/buildWithParameters?account=cloudops-dev&externalName=vi-sky-capp7.cloud.modeln.com'
payload = {"parameter": [{"name":"account","value":"cloudops-dev"},{"name":"externalName","value":"vi-sky-capp7.cloud.modeln.com"}]}
headers = {'Content-Type': 'application/json-rpc'}
#r = requests.post(jenkins_url,auth=('sbirukov','token'),json=payload,headers=headers)
r = requests.post(jenkins_url)
r = requests.post(jenkins_url,auth=('sbirukov','jenkins_token'),headers=headers)
r.close()
r.text
