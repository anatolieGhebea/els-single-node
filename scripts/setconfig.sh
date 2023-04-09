#!/bin/bash

echo "Setting ENV variables...."

echo "Moving configs to ElasticSearc..."
cp -r ../config/elasticsearch.yml $ES_HOME/config/elasticsearch.yml
cp -r ../config/jvm_override.options $ES_HOME/config/jvm.options.d/jvm_override.options
echo "Done."