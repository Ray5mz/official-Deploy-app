# sihati



# Guide de commande


## Table des matières

* [Resolve Issues](#Sihati)
* [Config Intellij](#commande-intellij)



### Intellij

#### Config


### Enabling HTTPS  

#### Steps to obtain the SSL certificate and export it

```
1.Keytool -genkeypair -alias (nom de alias selon votre choix) -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore (nom de keystore) -validity 3650
1.Keytool -genkeypair -alias tomcat -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore -validity 3650
###########veuillez remplir vos informations #############.

2.keytool -export -keystore (le nom de votre keystore) -alias (nom de votre alias) -file local-cert.crt.
2.keytool -export -keystore keystore -alias tomcat -file local-cert.crt.


3.keytool -export -keystore (le nom de votre keystore) -alias (nom de votre alias) -file local-key.key.
3.keytool -export -keystore keystore -alias tomcat -file local-key.key.

```

#### Configuring SSL : update application.properties file
```
#SSL CERTIFICATE
server.port:8443 (port)
server.ssl.key-store:keystore.p12 ( le path ou se trouve votre keystore)
server.ssl.key-store-password: password
server.ssl.keyStoreType: PKCS12
server.ssl.keyAlias: nom de alias 
server.ssl.enabled=true
```
#### Redirect HTTP requests to HTTPS
```
make .crt file and .key file path in this script of package.json :
"start-ssl": "ng serve --proxy-config proxy.conf.json --hmr --port 4200 --ssl true --ssl-cert ssl/local.cert --ssl-key ssl/local-key.key"

```


### Resolution of tnactive.dll error in log

#### Steps to resolve issue

```
Downloads-path-> https://archive.apache.org/dist/tomcat/tomcat-connectors/native/1.1.17/binaries/win64/x64/ 
```
#### put the file in this folder
``````
path: C:\Windows\System32
```
`````````
#### Jasypt Configuration
```
Add Environment variable with name "SECRET_ENCRYPTION_KEY" and value "secretKey"
``````
