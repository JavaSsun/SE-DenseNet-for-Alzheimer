#!/bin/bash
baseADDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/AD/origin/"
cd $baseADDir
echo ~~~~~~AD-BET-Started~~~~~~
niiList=`ls *.nii`
for nii in $niiList;do
    echo $nii
    bet2 $nii  ${nii%.*}_brain -f 0.5 -g 0
done
echo ~~~~~~AD-BET-Finshed~~~~~~


baseCNDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/CN/origin/"
cd $baseCNDir
echo ~~~~~~CN-BET-Started~~~~~~
niiList=`ls *.nii`
for nii in $niiList;do
    echo $nii
    bet2 $nii  ${nii%.*}_brain -f 0.5 -g 0
done
echo ~~~~~~CN-BET-Finshed~~~~~~


baseMCIDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/MCI/origin/"
cd $baseMCIDir
echo ~~~~~~MCI-BET-Started~~~~~~
niiList=`ls *.nii`
for nii in $niiList;do
    echo $nii
    bet2 $nii  ${nii%.*}_brain -f 0.5 -g 0
done
echo ~~~~~~MCI-BET-Finshed~~~~~~
