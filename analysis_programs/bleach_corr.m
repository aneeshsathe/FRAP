function BCdata = bleach_corr( to_corr,ref_roi )
%BLEACH_CORR Correct bleaching using reference roi
%   Detailed explanation goes here
%%
% to_corr=in_data(:,1:end-3);
% ref_roi=in_data(:,end-2);

BCdata=bsxfun(@rdivide,to_corr,(ref_roi/ref_roi(1,1)));

% plot(1:size(BCdata,1),BCdata)
end

