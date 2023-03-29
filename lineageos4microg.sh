#!/bin/bash

LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run						\
       -e "BRANCH_NAME=lineage-19.1"			\
       -e "DEVICE_LIST=starlte"				\
       -e "RELEASE_TYPE=UNOFFICIAL"			\
       -e "BUILD_TYPE=userdebug"			\
       -e "SIGN_BUILDS=true"				\
       -e "SIGNATURE_SPOOFING=restricted"		\
       -e "WITH_GMS=true"				\
       -e "INCLUDE_PROPRIETARY=false"        		\
       -v "${LOCATION}/lineage:/srv/src"		\
       -v "${LOCATION}/zips:/srv/zips"			\
       -v "${LOCATION}/logs:/srv/logs"			\
       -v "${LOCATION}/cache:/srv/ccache"		\
       -v "${LOCATION}/keys:/srv/keys"			\
       -v "${LOCATION}/manifests:/srv/local_manifests"	\
       lineageos4microg/docker-lineage-cicd
