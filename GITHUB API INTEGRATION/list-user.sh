#!/bin/bash

#############################################
#
#  Author : Sujal Sahu
#  Date : 6/1/25
#  Input : {REPO_OWNER} {REPO_NAME}
#  Version : v1.o
#  Usage : use to get the list of collabrating member in the reposatory
#
#############################################


#set -x

# Github API URL
API_URI="https://api.github.com"

# Configure username and token
USERNAME=$username
TOKEN=$token

#User and Repo Information
REPO_OWNER=$1
REPO_NAME=$2

#helper function

function helper {
    expt_cmd_args=2

    if [ $# -ne $expt_cmd_args ]; then
        echo "Please provide the proper arguments."
        echo "./script.sh {repo_owner} {reponame}"
        exit 1
    fi
}

helper "$@"

#function to make a get request to the GITHUB API
function github_api_get {
	local endpoint="$1"
	local url="${API_URI}/${endpoint}"

	#send a get request to the github API with TOKEN
	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

function list_user_with_read_access {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

	#fetch list of collabrating users on the repo
	collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.admin == false) | .login' )"

	 # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
	# 
}

# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_user_with_read_access
