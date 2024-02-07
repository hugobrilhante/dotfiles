#!/usr/bin/env bash

# Quick change directories
# Expands .... -> ../../../


smartdots() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
zle -N smartdots
bindkey . smartdots
