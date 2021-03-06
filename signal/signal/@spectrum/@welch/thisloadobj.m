function thisloadobj(this, s)
%THISLOADOBJ   Load this object.

%   Author(s): J. Schickler
%   Copyright 1988-2004 The MathWorks, Inc.
%   $Revision: 1.1.6.1 $  $Date: 2004/04/01 16:20:33 $

window_thisloadobj(this, s);

set(this, ...
    'SegmentLength',  s.SegmentLength, ...
    'OverlapPercent', s.OverlapPercent);

% [EOF]
