%fopen: �гy�s�ɮ�  
%fprintf: �g�J���
%�����ɮ�:close
a = [1 2 3; 4 5 6 ; 7 8 9 ; 4 5 6 ; 1 2 3]

fopen ('test01.txt', 'w')
%d:���
%\n: ����
fprintf(fid, '%d %d %f \n',a') % fid, format, output data, ' �Ω���m
fclose(fid)

header = {'year' 'class' 'number'}
geog =fopen ('test02.txt', 'w')
%d:���
%\n: ����
%�W�[header:
fprintf(geog, '%s \t ',header{:})
fprintf(geog, '\n')
fprintf(fid, '%d %d %f \n',a') % fid, format, output data, ' �Ω���m
fclose(fid)