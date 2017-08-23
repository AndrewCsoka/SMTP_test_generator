#!/bin/bash

echo "SMTP_SERVER_HOST:"
read SMTP_SERVER_HOST
echo "SMTP_SERVER_USERNAME:"
read SMTP_SERVER_USERNAME
echo "SMTP_SERVER_PASSWORD:"
read SMTP_SERVER_PASSWORD
echo "SMTP_FROM_EMAIL:"
read SMTP_FROM_EMAIL
echo "SMTP_FROM_NAME:"
read SMTP_FROM_NAME


SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $SCRIPT_DIR/SMTP_test_generator.conf

printf "\n\nHere's the commands:\n"
printf "====================\n"
echo "telnet $SMTP_SERVER_HOST $SMTP_SERVER_PORT"
echo "HELO $SMTP_SERVER_HOST"
echo "AUTH LOGIN"
echo "${SMTP_SERVER_USERNAME}" | base64
echo "${SMTP_SERVER_PASSWORD}" | base64
echo "MAIL FROM: <$SMTP_FROM_EMAIL>"
echo "RCPT TO: <$SMTP_TO_EMAIL>"
echo "DATA"
echo "
To: $SMTP_TO_NAME <$SMTP_TO_EMAIL>
From: $SMTP_FROM_NAME <$SMTP_FROM_EMAIL>
subject: test       #now double enter
test email from $SMTP_SERVER_HOST $SMTP_FROM_EMAIL
."
printf "====================\n"


