#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Gives a not-so-random response to yes/no questions
# by andri
from sys import argv

q = ' '.join(argv[2:])
a = [
'Sure. Why not?',
'Definitely.',
'Absolutely.',
'Certainly.',
'No doubt about it.',
'It\'s a well known fact.',
'Indubitably',
'I guess so.',
'Indeed.',
'I guess not.',
'Not really.',
'Not at all.',
'The answer is no.',
'Absolutely not.',
'Why would you even consider that?',
'Nope.',
]
c = 0
for i in q:
    c += ord(i)
print a[c%len(a)]
