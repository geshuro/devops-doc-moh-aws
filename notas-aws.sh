- Crear conda env
conda create --name aws-imh python=3.10 -y
- Activar
conda activate aws-imh
- Instalar aws
pip install awscli

- Descargar NodeJS v16.x
https://nodejs.org/en/download/
- Resultado
This package has installed:
	•	Node.js v16.15.1 to /usr/local/bin/node
	•	npm v8.11.0 to /usr/local/bin/npm
Make sure that /usr/local/bin is in your $PATH.

- Después de instalar Node.js, instale AWS CDK Toolkit (el cdkcomando):
sudo npm install -g aws-cdk

-Pruebe la instalación emitiendo 
(aws-imh) imendozah@geshuro ~ % cdk --version
2.28.1 (build d035432)

- Prerequisitos para trabajar AWS CDK con TypeScript
sudo npm install -g typescript

- Crea un nuevo proyecto de AWS CDK invocando cdk init en un directorio vacío.
mkdir ministryhealth-project
cd ministryhealth-project
cdk init app --language typescript


#Desa - iymendozah
Website URL  │ https://m9kc3cqf2j.execute-api.us-east-2.amazonaws.com/iymendozah/ 
API Endpoint │ https://m9kc3cqf2j.execute-api.us-east-2.amazonaws.com/iymendozah/ 

#pre
│ Website URL  │ https://o96xhpe0r7.execute-api.eu-west-1.amazonaws.com/pre/ │
│ API Endpoint │ https://o96xhpe0r7.execute-api.eu-west-1.amazonaws.com/pre/

Add ip in WAF for all
0.0.0.0/1
128.0.0.0/1

Politica OpenSearch para acceso a Kibana
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "es:*",
      "Resource": "arn:aws:es:us-east-2:619388543473:domain/iymendozah-oh-moh-os/*",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": [
            "0.0.0.0/1",
            "128.0.0.0/1"
          ]
        }
      }
    }
  ]
}

##Permisos temporales

Cognito_preirlmohpoolAuth_Role
Cognito_preirlmohpoolUnauth_Role

##Example
/ Initialize the Amazon Cognito credentials provider
AWS.config.region = 'eu-west-1'; // Region
AWS.config.credentials = new AWS.CognitoIdentityCredentials({
    IdentityPoolId: 'eu-west-1:0957cb7d-5708-4a6a-b389-7445327a4cdb',
});



#luego de configurar COgnito con OpenSearch
# Se cambia los permisos
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": [
          "arn:aws:iam::775646345069:role/Cognito_preirlmohpoolAuth_Role"
        ]
      },
      "Action": [
        "es:ESHttp*"
      ],
      "Resource": "arn:aws:es:eu-west-1:775646345069:domain/pre-irl-moh-os/*"
    }
  ]
}