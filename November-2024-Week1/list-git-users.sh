#!/bin/bash

# Git Hub API Url 
api_url="https://api.github.com"

# Github username and password 
username=$username
token=$token
echo "$username"
# user and repository command line argumnets 
repo_owner=$1
repo_name=$2

# Function to make GET api request to github

function github_api_get {
    local endpoint="$1"
    local url="${api_url}/${endpoint}"

    # send a get request to github API with authentication
    curl -s -u "${username}:${token}" "$url"
}

# function to list users with read access to repository 
function list_users_with_read_access {
    local endpoint="repos/${repo_owner}/$repo_name/collaborators"

    # fetch the list of collaborators on the repository 
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    # Display the collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${repo_owner}/${repo_name}:"
    else
          echo "Users with read access found for ${repo_owner}/${repo_name}:"
          echo $collaborators
    fi
}

# Main script 
echo "Listing the users with read access to ${repo_owner}/${repo_name}"
list_users_with_read_access