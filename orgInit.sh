# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s --wait 60 --userprefix admin -o transaction.workshop

# Updates the Transaction Security Policies to contain this scratch orgs username
sfdx shane:tsp:username:update

# Push the metadata into the new scratch org.
sfdx force:source:push

# Assign user the permset
sfdx force:user:permset:assign -n TransactionSecurity

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Open the org.
sfdx force:org:open

# Import the data required by the demo
sfdx automig:load --inputdir ./data