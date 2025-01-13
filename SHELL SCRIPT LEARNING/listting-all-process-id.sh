#!/bin/bash

ps -ef | awk -F" " '{print $3}'
