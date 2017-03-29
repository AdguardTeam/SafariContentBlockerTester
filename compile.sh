#!/bin/bash

echo 'Downloading files..'
mkdir download
cd download

mkdir filters

curl -s -o 'filters/filter_1.txt' 'https://filters.adtidy.org/ios/filters/1_optimized.txt'
curl -s -o 'filters/filter_2.txt' 'https://filters.adtidy.org/ios/filters/2_optimized.txt'
curl -s -o 'filters/filter_3.txt' 'https://filters.adtidy.org/ios/filters/3_optimized.txt'
curl -s -o 'filters/filter_4.txt' 'https://filters.adtidy.org/ios/filters/4_optimized.txt'
curl -s -o 'filters/filter_5.txt' 'https://filters.adtidy.org/ios/filters/5_optimized.txt'
curl -s -o 'filters/filter_6.txt' 'https://filters.adtidy.org/ios/filters/6_optimized.txt'
curl -s -o 'filters/filter_7.txt' 'https://filters.adtidy.org/ios/filters/7_optimized.txt'
curl -s -o 'filters/filter_8.txt' 'https://filters.adtidy.org/ios/filters/8_optimized.txt'
curl -s -o 'filters/filter_9.txt' 'https://filters.adtidy.org/ios/filters/9_optimized.txt'
curl -s -o 'filters/filter_10.txt' 'https://filters.adtidy.org/ios/filters/10_optimized.txt'
curl -s -o 'filters/filter_11.txt' 'https://filters.adtidy.org/ios/filters/11_optimized.txt'
curl -s -o 'filters/filter_12.txt' 'https://filters.adtidy.org/ios/filters/12_optimized.txt'
curl -s -o 'JSConverter.js' 'https://raw.githubusercontent.com/AdguardTeam/SafariContentBlockerConverterCompiler/master/compiled/JSConverter.js'

cd ..

echo 'Copy files to extension'
cp download/JSConverter.js ./SafariContentBlockerTester.safariextension/JSConverter.js
cp download/filters/* ./SafariContentBlockerTester.safariextension/filters/

echo 'Cleaning..'
rm -rf download/
echo 'Success'
