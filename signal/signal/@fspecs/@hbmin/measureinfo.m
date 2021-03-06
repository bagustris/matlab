function minfo = measureinfo(this)
%MEASUREINFO   Return a structure of information for the measurements.

%   Author(s): J. Schickler
%   Copyright 2005 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2005/06/16 08:31:14 $

tw = get(this, 'TransitionWidth');
astop = get(this, 'Astop');
apass = convertmagunits(convertmagunits(astop, 'db', 'linear', 'stop'), 'linear', 'db', 'pass');

if this.NormalizedFrequency, fs = 2;
else,                        fs = this.Fs; end

minfo.Fpass = fs/4-tw/2;
minfo.Fstop = fs/4+tw/2;

minfo.Apass = apass;
minfo.Astop = astop;

% [EOF]
