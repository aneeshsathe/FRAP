function sub_dat = sub_min( in_dat )
%SUB_MIN subtract minimum value of each column from each column of given array
%   Detailed explanation goes here
sub_dat=bsxfun(@minus,in_dat,min(in_dat));

end

