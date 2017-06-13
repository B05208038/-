%fopen: 創造新檔案  
%fprintf: 寫入資料
%關畢檔案:close
a = [1 2 3; 4 5 6 ; 7 8 9 ; 4 5 6 ; 1 2 3]

fopen ('test01.txt', 'w')
%d:整數
%\n: 換行
fprintf(fid, '%d %d %f \n',a') % fid, format, output data, ' 用於轉置
fclose(fid)

header = {'year' 'class' 'number'}
geog =fopen ('test02.txt', 'w')
%d:整數
%\n: 換行
%增加header:
fprintf(geog, '%s \t ',header{:})
fprintf(geog, '\n')
fprintf(fid, '%d %d %f \n',a') % fid, format, output data, ' 用於轉置
fclose(fid)