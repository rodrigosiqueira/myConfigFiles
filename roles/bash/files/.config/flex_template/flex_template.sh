#!/bin/bash

declare -r DEFAULT_PATH="$HOME/.config/flex_template/templates"

function usage ()
{
  echo 'Usage: flex-template [OPTION] [p path]'
  echo -e "\t-l\tList all available templates"
  echo -e "\t-c NAME\tCreate a new template, it is expected a valid name"
  echo -e "\t-p\tTarget path to create the template. Default: current path"
  echo -e "\t-n\tName"
  echo -e "\t-h\tHelp information"
  exit 0
}

function list_flex_templates_available ()
{
  echo -e "Available templates:\n"
  local -i i=1
  for available_templates in $(eval echo $DEFAULT_PATH/*); do
    template_name=$(basename $available_templates)
    echo -e " [$i] $template_name"
    (( i++ ))
  done
}

function copy_template ()
{
  create_at=$2
  if [ -z $create_at ]; then
    create_at=$PWD
  fi
  cp -r $DEFAULT_PATH/$1 $create_at
}

function template_control ()
{
  local -A parameters
  while getopts "lc:p:n:h" options; do
    case $options in
      c | p | n)
        parameters[$options]=$OPTARG
      ;;
      l)
        list_flex_templates_available
				exit 0
      ;;
      h | * | \?)
        usage
      ;;
    esac
  done

  if [ -z ${parameters[@]} ]; then
    list_flex_templates_available
    exit 0
  fi

  for template in $( eval echo $DEFAULT_PATH/* ); do
    template_name=$(basename $template)
    if [ "$template_name" == "${parameters["c"]}" ]; then
      copy_template ${parameters["c"]} ${parameters["p"]}
      exit 0
    fi
  done

  echo 'Invalid template'
  exit 1
}

function flex-template ()
{
   (>&2 template_control "$@")
}
