#!/bin/bash

echo "Making sure you are int the home directory"
cd ~
pwd

echo "Dwonloading Elastic...";
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.6.2-linux-x86_64.tar.gz

echo "Verify the checksum...";
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.6.2-linux-x86_64.tar.gz.sha512 shasum -a 512 -c elasticsearch-8.6.2-linux-x86_64.tar.gz.sha512

echo "Unpacking..."
tar -xzf elasticsearch-8.6.2-linux-x86_64.tar.gz
rm -rf elasticsearch-8.6.2-linux-x86_64.tar.gz*

export ES_HOME="$PWD/elasticsearch-8.6.2"
echo $ES_HOME

cd ../config
cp elasticsearch.yml.example elasticsearch.yml
cp jvm_override.options.example jvm_override.options
cd ../scripts

echo "Done!"
echo "WARNING!! \nBefore running 'setconfig.sh' be sure to edit the settings in \nelasticsearch.yml \njvm_override.options \n"

