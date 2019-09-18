#!/usr/bin/python

import imaplib
import os
import subprocess

completed_process = subprocess.run(['gpg', '-dq', os.path.join(os.getenv('HOME'), '.imappass.gpg')], check=True, stdout=subprocess.PIPE, encoding="utf-8");
password = completed_process.stdout[:-1]
obj = imaplib.IMAP4_SSL('mail.nevans.me', 993)
# Only put your email address below.
obj.login('noah@nevans.me', password)
obj.select()

new = len(obj.search(None, 'unseen')[1][0].split())
print("M:" + str(new)) if new > 0 else print()
