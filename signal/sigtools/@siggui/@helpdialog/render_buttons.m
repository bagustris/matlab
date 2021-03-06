function render_buttons(hDlg)
%RENDER_BUTTONS Render the Dialog buttons (OK/Cancel/Apply)

%   Author(s): J. Schickler
%   Copyright 1988-2002 The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 2002/08/26 19:37:49 $

% This can be a private method

hFig = get(hDlg,'FigureHandle');
sz   = gui_sizes(hDlg);
h    = get(hDlg,'Handles');

fsz = figuresize(hDlg);

enabState = get(hDlg, 'Enable');

bgc   = get(0,'defaultuicontrolbackgroundcolor');

ctrlStrs = {sprintf('Apply'),sprintf('Cancel'),'OK', sprintf('Help')};
numbtns = 4;
uiWidth = largestuiwidth(ctrlStrs,'Pushbutton')+10*sz.pixf;

spacing = sz.uuhs;

okXPos     = fsz(1)/2-uiWidth*numbtns/2 - spacing*(numbtns-1)/2;
cancelXPos = okXPos + uiWidth + spacing;
helpXPos   = cancelXPos + uiWidth + spacing;
applyXPos  = helpXPos + uiWidth + spacing;

applyPbPos = [applyXPos 2*sz.vfus uiWidth sz.bh];
cancelPbPos = [cancelXPos 2*sz.vfus uiWidth sz.bh];
helpPos = [helpXPos 2*sz.vfus uiWidth sz.bh];

% OK button Position
okPbPos = [okXPos 2*sz.vfus uiWidth sz.bh];

cbs = helpdialog_cbs(hDlg);

% Render the "OK" pushbutton 
h.ok = uicontrol(hFig,...
    'Style','Push',...
    'BackgroundColor',bgc,...
    'Position',okPbPos,...
    'Visible','On',...
    'Enable',enabState,...
    'String',ctrlStrs{3},...
    'Tag','dialog_ok',...
    'Callback',cbs.ok);

% Render the "Cancel" pushbutton 
h.cancel = uicontrol(hFig,...
    'Style','Push',...
    'BackgroundColor',bgc,...
    'Position',cancelPbPos,...
    'Visible','On',...
    'Enable',enabState,...
    'String',ctrlStrs{2},...
    'Tag','dialog_cancel',...
    'Callback',cbs.cancel);

h.help = uicontrol(hFig, ...
    'Style','Push', ...
    'BackgroundColor', bgc, ...
    'Position', helpPos, ...
    'Visible', 'On', ...
    'Enable', enabState, ...
    'String', ctrlStrs{4}, ...
    'Tag','dialog_help', ...
    'Callback', cbs.help);

% Render the "Apply" pushbutton 
h.apply = uicontrol(hFig,...
    'Style','Push',...
    'BackgroundColor',bgc,...
    'Position',applyPbPos,...
    'Visible','On',...
    'Enable',enabState,...
    'String',ctrlStrs{1},...
    'Tag','dialog_apply',...
    'Callback',cbs.apply);

h.warn = [];

set(hDlg,'DialogHandles',h);

% [EOF]
