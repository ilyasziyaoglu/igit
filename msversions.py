#!/usr/bin/env python
# coding: utf-8

import requests as req
import json

serviceList = ['productcatalog', 'basket', 'payment', 'offer', 'order', 'shipping', 'ws', 'discount', 'job', 'event', 'customer']

file = open("igit.config").read()
configs = {}
for line in file.split("\n"):
    if "=" in line:
        params = line.split("=")
        configs[params[0]] = params[1]

# PRP VERSIONS
print('# PRP VERSIONS')
prpVersions = {}
for service in serviceList:
    res = req.get(configs["prp" + service], verify=False, timeout=2)
    prpVersions[service] = {
        'version': json.loads(res.content)["context"]["ecomLibVersion"][9:],
        'startupDate': json.loads(res.content)["context"]["startupDate"]}
    print(service, prpVersions[service],"\n")

# STB VERSIONS
print('# STB VERSIONS')
stbVersions = {}
for service in serviceList:
    res = req.get(configs["stb" + service], verify=False, timeout=2)
    stbVersions[service] = {
        'version': json.loads(res.content)["context"]["ecomLibVersion"][9:],
        'startupDate': json.loads(res.content)["context"]["startupDate"]}
    print(service, stbVersions[service],"\n")

