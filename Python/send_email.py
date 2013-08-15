#!/bin/env python

from mailtools import SMTPMailer
import logging

logging.basicConfig()

mailer = SMTPMailer('localhost')
message = u'there is an attachment with this message'
mailer.send_plain(
        u'junwang@gmail.com',
        [u'junwang@yahoo-inc.com'],
        u'test email',
        message,
        attachments=['2.txt']
)
