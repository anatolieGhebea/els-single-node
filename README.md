# els-single-node

A collection of instructions ad scripts to configure ElasticSearch server on a Ubuntu VPS. 
This documentation refers to the ElasticSearch v8.6

## Requisits

1) Ubuntu 22.04 VPS
2) SSH access with a sudo user

## Steps

1) Check ElasticSearch software requirements.
2) install ElasticSearch software and configure.
3) Set the firewall to accept connections only from a limited set of IP addresses

### 1)

Open the elastic search documentation, making sure it's the 8.6 version, for quick reference during installatio. [ElasticSearch Documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup.html)

### 2)

Go tho the `scripts` directory, make sure the scripts are esecutable, then run
`./install.sh`
to install ElasticSearch.



Then start it with `./bin/elasticsearch` in background.
To run as daemon `./bin/elasticsearch -d -p pid` and to stop it `pkill -F pid`.
<!-- Normaly the process ID is prented out, if not it is possible to find it by running 
`ps -aux | grep -i "elastic"` and use `sudo kill -9 <process_id>` to stop the elastic search instance. -->

first check:
`curl -XGET 'https://localhost:9200/?pretty'`

## Quick Reference CLI commands

> to run the following commands you must be in the $ES_HOME directory. Usualy in ~/elasticsearch-\<version\>

You can complete the following actions at any time:
Reset the password of the elastic built-in superuser with
`bin/elasticsearch-reset-password -u elastic`

Generate an enrollment token for Kibana instances with
`bin/elasticsearch-create-enrollment-token -s kibana`

Generate an enrollment token for Elasticsearch nodes with
`bin/elasticsearch-create-enrollment-token -s node`
