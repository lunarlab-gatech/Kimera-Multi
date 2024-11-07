#/usr/bin/env bash

# INSTRUCTION: 
# Replace DATASET_ROOT with path to the kimera-multi dataset on the host machine.
# Correct setting should have the following structure:
# 
# DATASET_ROOT
# -- campus_outdoor
#    -- 10_14_acl_jackal.bag
#    -- 10_14_acl_jackal2.bag
#    -- etc.
#
DATASET_ROOT="/home/dbutterfield3/Desktop/Kimera-Multi/docker/docker_mounted_folder"

docker run -it --rm --net=host \
  -v $(pwd)/volume:/root/volume \
  -v ${DATASET_ROOT}:/root/KimeraMulti_IROS23 \
  -e "DISPLAY=$DISPLAY" \
  -v "$HOME/.Xauthority:/root/.Xauthority:ro" \
  kimera-multi-deploy
