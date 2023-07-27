#!/bin/bash
baseADDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/AD/origin/"
cd $baseADDir
echo ~~~~~~AD-FLIRT-Started~~~~~~
niiList=`ls *.nii.gz`
for nii in $niiList;do
    echo $nii
    flirt -in $nii -ref /usr/local/fsl/data/standard/MNI152_T1_2mm_brain -out ${nii%.nii.gz*}_FLIRT \
          -omat ${nii%.nii.gz*}_FLIRT.mat \
          -bins 256 -cost corratio \
          -searchrx -90 90 -searchry -90 90 -searchrz -90 90 \
          -dof 12  -interp trilinear
done
echo ~~~~~~AD-FLIRT-Finshed~~~~~~


baseCNDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/CN/origin/"
cd $baseCNDir
echo ~~~~~~CN-FLIRT-Started~~~~~~
niiList=`ls *.nii.gz`
for nii in $niiList;do
    echo $nii
    flirt -in $nii -ref /usr/local/fsl/data/standard/MNI152_T1_2mm_brain -out ${nii%.nii.gz*}_FLIRT \
          -omat ${nii%.nii.gz*}_FLIRT.mat \
          -bins 256 -cost corratio \
          -searchrx -90 90 -searchry -90 90 -searchrz -90 90 \
          -dof 12  -interp trilinear
done
echo ~~~~~~CN-FLIRT-Finshed~~~~~~


baseMCIDir="/home/pugongying/data/jupyterLab/shr/AD/ADNI-Datasets/MCI/origin/"
cd $baseMCIDir
echo ~~~~~~MCI-FLIRT-Started~~~~~~
niiList=`ls *.nii.gz`
for nii in $niiList;do
    echo $nii
    flirt -in $nii -ref /usr/local/fsl/data/standard/MNI152_T1_2mm_brain -out ${nii%.nii.gz*}_FLIRT \
          -omat ${nii%.nii.gz*}_FLIRT.mat \
          -bins 256 -cost corratio \
          -searchrx -90 90 -searchry -90 90 -searchrz -90 90 \
          -dof 12  -interp trilinear
done
echo ~~~~~~MCI-FLIRT-Finshed~~~~~~

