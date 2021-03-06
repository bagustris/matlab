function disp(this)
%DISP   Display this object.

%   Author(s): J. Schickler
%   Copyright 2004 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2004/12/26 22:10:55 $

p = {'NormalizedFrequency'};

if ~this.NormalizedFrequency
    p = {p{:}, 'Fs'};
end

p = {p{:}, 'FrequencySpecification'};

if strcmpi(this.FrequencySpecification, 'NFFT')
    p = {p{:}, 'NFFT', 'SpectrumRange', 'CenterDC'};
else
    p = {p{:}, 'FrequencyVector'};
end

siguddutils('dispstr', this, p);

% [EOF]
