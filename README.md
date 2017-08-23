# SMTP test generator

I hate trying to remember the commands to debug SMTP, so this script asks for some parameters and spits out the relevant commands. base64 encoding too! I'll probably improve it to automatically send the email.

## Getting Started

Run the script, enter the values, use them.

You'll want to edit the values in the config file, and name it "SMTP_test_generator.conf"

```
SMTP_SERVER_PORT=25
SMTP_TEST_TO="yourself@example.com"
SMTP_TEST_MSG="
To: Your Self <yourself@example.com>
From: Someone Else <someone.else@example.com>
subject: test       #now double enter
test email body
."
```

## Authors

* **Andrew Csoka** - [AndrewCsoka](https://github.com/AndrewCsoka)

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE](LICENSE) file for details
