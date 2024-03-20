#In terminal of Pi

```
curl -sL https://raw.githubusercontent.com/NiallRedMane/update-cacerts/main/update-cacerts.sh | sudo bash
```

This will:
- download the latest cacerts
- backup the current cacerts
- place the new cacerts into the java security folder
- reboot the pi

Once the Pi is rebooted the App should be available again
