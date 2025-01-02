#!/bin/bash

word=mississippi

grep -o "s" <<<"$word" | wc -l
