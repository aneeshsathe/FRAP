function write_xls( NUM, TXT, file_path)
%WRITE_XLS take input of data(NUM) and header(TXT) and write to file_path
%   Detailed explanation goes here
% TXT(1:size(NUM,2))
xlswrite(file_path,TXT(1:size(NUM,2)),'Sheet3' );

xlswrite(file_path,NUM,'Sheet3','A2' );

end

