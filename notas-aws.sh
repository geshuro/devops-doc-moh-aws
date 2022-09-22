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