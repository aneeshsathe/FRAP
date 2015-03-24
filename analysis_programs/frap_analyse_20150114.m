%% read and normalize FRAP data using reference roi
clear
clc
root_root='D:\Aneesh\A_new_frap\nonFA as ref ROI results16-Jan-2015\';

file_name=dir([root_root ,'*.xls']);

%%
for file_count=1:numel(file_name);
    %%
%     file_count=1
    file_path=[root_root, file_name(file_count).name];
    [in_data,TXT,~]=xlsread(file_path);
%     plot(1:size(in_data,1),in_data)
%      legend(TXT)
    %%
%     in_data=xlsread(file_path);
    
    BCdata = bleach_corr( in_data(:,1:end-3),in_data(:,end-1) );
    
    min_sub=sub_min(BCdata);
%     plot(1:size(in_data,1),BCdata)
%      legend(TXT)
    %%
    norm_dat= norm_prebleach( min_sub );
    
    write_xls(norm_dat, TXT, file_path)
   
    
end