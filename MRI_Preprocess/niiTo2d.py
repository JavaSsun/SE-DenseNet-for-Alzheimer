import numpy as np
import os #遍历文件夹
import nibabel as nib
import imageio #转换成图像

def nii_to_image(niifile):
    filenames = os.listdir(filepath)  #读取nii文件
    slice_trans = []

    for f in filenames:
        #开始读取nii文件
        img_path = os.path.join(filepath, f)
        img = nib.load(img_path)  #读取nii
        img_fdata = img.get_fdata()
        fname = f.replace('.nii', '') #去掉nii的后缀名
        img_f_path = os.path.join(imgfile, fname)
        # 创建nii对应图像的文件夹
        if not os.path.exists(img_f_path):
            os.mkdir(img_f_path)  #新建文件夹

        #开始转换图像
        (x,y,z) = img.shape
        for i in range(z):   #是z的图象序列
            slice = img_fdata[i, :, :]  #选择哪个方向的切片自己决定
            imageio.imwrite(os.path.join(img_f_path, '{}.png'.format(i)), slice)
