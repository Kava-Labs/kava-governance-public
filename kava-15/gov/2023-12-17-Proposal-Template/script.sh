#!/bin/bash

title="Template Proposal"

# Read the contents of proposal
description=$(cat ./2023-12-17-Proposal-Template.md)

# Legacy text proposal format
jq -n \
    --arg title "$title" \
    --arg desc "$description" \
    '{type: "Text", title: $title, description: $desc, deposit: "1000000000ukava"}' > ./proposal.json
