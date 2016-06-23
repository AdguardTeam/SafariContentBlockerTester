#!/bin/bash

echo 'Downloading files..'
mkdir download
cd download

mkdir filters

curl -s -o 'filters/filter_1.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=1&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_2.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=2&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_3.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=3&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_4.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=4&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_5.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=5&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_6.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=6&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_7.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=7&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_8.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=8&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_9.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=9&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_10.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=10&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_11.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=11&key=4DDBE80A3DA94D819A00523252FB6380'
curl -s -o 'filters/filter_12.txt' 'https://chrome.adtidy.org/getfilter.html?filterid=12&key=4DDBE80A3DA94D819A00523252FB6380'

cd ..

echo 'Copy files to extension'
# cp -v ../SafariContentBlockerConverter/compiled/JSConverter.js ./SafariContentBlockerTester.safariextension/JSConverter.js
cp download/filters/* ./SafariContentBlockerTester.safariextension/filters/

echo 'Cleaning..'
rm -rf download/
echo 'Success'
