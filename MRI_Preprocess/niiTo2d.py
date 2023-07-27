import numpy as np
import os #�����ļ���
import nibabel as nib
import imageio #ת����ͼ��

def nii_to_image(niifile):
    filenames = os.listdir(filepath)  #��ȡnii�ļ�
    slice_trans = []

    for f in filenames:
        #��ʼ��ȡnii�ļ�
        img_path = os.path.join(filepath, f)
        img = nib.load(img_path)  #��ȡnii
        img_fdata = img.get_fdata()
        fname = f.replace('.nii', '') #ȥ��nii�ĺ�׺��
        img_f_path = os.path.join(imgfile, fname)
        # ����nii��Ӧͼ����ļ���
        if not os.path.exists(img_f_path):
            os.mkdir(img_f_path)  #�½��ļ���

        #��ʼת��ͼ��
        (x,y,z) = img.shape
        for i in range(z):   #��z��ͼ������
            slice = img_fdata[i, :, :]  #ѡ���ĸ��������Ƭ�Լ�����
            imageio.imwrite(os.path.join(img_f_path, '{}.png'.format(i)), slice)
