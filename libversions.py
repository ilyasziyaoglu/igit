#!/usr/bin/env python
# coding: utf-8

import requests as req

file = open("igit.config").read()
configs = {}
for line in file.split("\n"):
    if "=" in line:
        params = line.split("=")
        configs[params[0]] = params[1]

res = req.get(configs['clientlib'], timeout=20)
liste = res.content.splitlines()[9:-4]
stbClientLibVersions = [str(version[15:22]) for version in liste if '<version>1.' in str(version) and '1.2.0' not in str(version)]
prpClientLibVersions = [str(version[15:22]) for version in liste if '<version>2.' in str(version) and '2.0.158' not in str(version)]

print('stb client-lib version', stbClientLibVersions[-1])
print('prp client-lib version', prpClientLibVersions[-1])

res = req.get(configs['ecomlib'], timeout=20)
liste = res.content.splitlines()[9:-4]
stbClientLibVersions = [str(version[15:22]) for version in liste if '<version>1.' in str(version)]
prpClientLibVersions = [str(version[15:22]) for version in liste if '<version>2.' in str(version) and '2.0.158' not in str(version)]

print('stb ecom-lib version  ', stbClientLibVersions[-1])
print('prp ecom-lib version  ', prpClientLibVersions[-1])
