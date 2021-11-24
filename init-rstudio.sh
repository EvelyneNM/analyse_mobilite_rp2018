#!/bin/sh

# Create variables
WORK_DIR=/home/rstudio/analyse_mobilite_rp2018
REPO_URL=https://github.com/fBedecarrats/analyse_mobilite_rp2018
DATA_DIR=${WORK_DIR}/data
DOC_DIR=${WORK_DIR}/documentation

# Git
git clone $REPO_URL $WORK_DIR
chown -R rstudio:users $WORK_DIR

# Folders to store data and documentation
mkdir $DATA_DIR
mkdir $DOC_DIR

# copy files
mc cp s3/fbedecarrats/diffusion/{FD_MOBPRO_2018.csv,commune2021.csv,Intercommunalite-Metropole_au_01-01-2021.xlsx,Varmod_MOBPRO_2018.csv} $DATA_DIR
mc cp s3/fbedecarrats/diffusion/contenu_RP2018_mobpro.pdf $DOC_DIR

# launch RStudio in the right project
echo "open analyse_mobilite_rp2018/analyse_mobilite_rp2018.Rproj"
