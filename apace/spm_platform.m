function varargout = spm_platform(varargin)
switch lower(varargin{1})
case 'bigend'                         
    [_, _, bigend] = computer();
    varargout = {strcmp(bigend, 'B')};
otherwise
    error('Unknown Action string')
end