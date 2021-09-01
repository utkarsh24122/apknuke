# 📱apknuke
Find vulnerabilities in Android Applications : Static Analysis 🎯

Template Based Static Analysis of Android Applications 

Find secrets, keys & many more. Check [Features](https://github.com/utkarsh24122/apknuke#features-) & [Screenshots](https://github.com/utkarsh24122/apknuke#-screenshots)

Templates by [@0xgaurang](https://twitter.com/0xgaurang)

# ⚙ Setup
```
$ git clone https://github.com/utkarsh24122/apknuke
$ cd apknuke;chmod +x *;cd..
```
install apktool ([Read How](https://ibotpeaches.github.io/Apktool/install/))

required: [nuclei](https://github.com/projectdiscovery/nuclei)

get templates:
```
$ git clone https://github.com/optiv/mobile-nuclei-templates
```
Configure path of templates in the 1st line of apknuke.sh : 
```
PATH_TO_NucleiTemplates="/[path]/mobile-nuclei-templates/"
```

# 💻 Usage 
```
./apknuke.sh target.apk
```
# Features ✨

- Checks for :

 AWS Access Key ID 
 
 Twitter Secret 
 
 Mailchimp API Key 
 
 Square OAuth Secret 
 
 Dynatrace Token 
 
 Shopify Custom App Access Token 
 
 Cloudinary Basic Auth 
 
 Linkedin Client ID 
 
 S3 Bucket Detect 
 
 Slack API Key 
 
 Shopify Private App Access Token 
 
 Firebase Database Detect 
 
 Google API key 
 
 Square Accesss Token 
 
 Facebook Client ID 
 
 Basic Auth Credentials 
 
 Facebook Secret Key 
 
 Twilio API Key 
 
 Sendgrid API Key 
 
 Slack Webhook 
 
 Google Maps API keys
 
 Amazon MWS Auth Token 
 
 Shopify Shared Secret 
 
 Private Key Detect 
 
 Paypal Braintree Access Token 
 
 Shopify Access Token 
 
 Stripe API Key 
 
 Pictatic API Key 
 
 Mailgun API Key 
 
 AWS Cognito Pool ID 
 
 Biometric or Fingerprint detect 
 
 Webview JavaScript enabled 
 
 Webview loadUrl usage 
 
 ADB Backup Enabled 
 
 Webview addJavascript Interface Usage 
 
 File Scheme Enabled 
 
 Content Scheme Enabled 
 
 Webview Universal Access enabled 
 
 Improper Certificate Validation 
 
 Insecure Provider Path 
 
 Dynamic Registered Broadcast Receiver 
 
 Android Debug Enabled 
 

# 📷 Screenshots
![image](https://user-images.githubusercontent.com/54320208/122881762-21599080-d359-11eb-94f9-bd1e4ec57669.png)
![image](https://user-images.githubusercontent.com/54320208/122882004-5fef4b00-d359-11eb-9e79-f57f10d5239c.png)
