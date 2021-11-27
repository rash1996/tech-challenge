#!/bin/bash
function get_value()
{
  key=$(echo $2 | tr '/' '.')
  echo '$1' > obj.json
  jq -r .$key obj.json
}
get_value $1 $2
