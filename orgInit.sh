sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -w60 -p admin -e transaction.workshop
sf project deploy start
sf org assign permset -n TransactionSecurity
sf demoutil user password set -p salesforce1 -g User -l User
sf automig load --inputdir ./data
sf org open

