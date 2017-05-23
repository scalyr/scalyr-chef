# Scalyr Chef Recipes

This repository holds the official Chef recipes to install the Scalyr Agent.

This is currently in **BETA** release.  We are stil investigating the best
way to support Chef users.  Please send your feedback to support@scalyr.com.

Existing recipes have only been tested on chef 12.

# Source Code

The source code for this cookbook can be downloaded from our GitHub repo:

https://github.com/scalyr/scalyr-chef

# Recipes

## default

Installs, configures, enables at boot, and starts the scalyr agent service.

## agent

Same as default

## install

Installs the agent, but does not update configuration or start the agent service

## configure

Updates the config files of the agent to match the attributes assigned to a
node.

## start

Enables the agent to start at boot, and starts the scalyr agent service.

# Instructions

Coming soon
