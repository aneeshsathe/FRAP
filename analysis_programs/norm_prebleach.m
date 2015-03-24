function norm_dat= norm_prebleach( in_dat )
%NORM__PREBLEACH normalise in_data to avg of data before the minimum of
%data. i.e. the bleach frame in FRAP
%   Detailed explanation goes here
%%
% in_dat=min_sub;
[~,k]=min(in_dat);


for count=1:numel(k)
    PB_mean(count)=mean(in_dat(1:(k(count))-1,count)); %mean of values before bleach frame
    
end

norm_dat=bsxfun(@rdivide,in_dat,PB_mean);
end

