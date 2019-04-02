function varargout = Calculator(varargin)
global toggle;
% CALCULATOR MATLAB code for Calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculator

% Last Modified by GUIDE v2.5 07-Dec-2011 23:36:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Calculator is made visible.
function Calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculator (see VARARGIN)

% Choose default command line output for Calculator
handles.output = hObject;
set(hObject, 'toolbar', 'figure');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
% hObject    handle to del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
len = length(textString);
textString(len) = [];
set(handles.edit2, 'String', textString);


% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
% hObject    handle to power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.power, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in brace_1.
function brace_1_Callback(hObject, eventdata, handles)
% hObject    handle to brace_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.brace_1, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in brace_2.
function brace_2_Callback(hObject, eventdata, handles)
% hObject    handle to brace_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.brace_2, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit2, 'String', '');
title('')
cla;


% --- Executes on button press in plus_min.
function plus_min_Callback(hObject, eventdata, handles)
% hObject    handle to plus_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
if textString(1) ~= '-'
    textString = strcat('-', textString);
else
   textString(1) = [];
end

set(handles.edit2, 'String', textString);


% --- Executes on button press in divid.
function divid_Callback(hObject, eventdata, handles)
% hObject    handle to divid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.divid, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString, '*');
set(handles.edit2, 'String', textString);



% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.seven, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.eight, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.nine, 'String'));
set(handles.edit2, 'String', textString);

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)    x = -5:1/10:5;
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.minus, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.four, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.five, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.six, 'String'));
set(handles.edit2, 'String', textString);

% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.plus, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.one, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.two, 'String'));
set(handles.edit2, 'String', textString);



% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.three, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in evalute.
function evalute_Callback(hObject, eventdata, handles)
% hObject    handle to evalute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
if length(textString) ~= 0
    textString = eval(textString);
end
set(handles.edit2, 'String', textString);

% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.zero, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in dec.
function dec_Callback(hObject, eventdata, handles)
% hObject    handle to dec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get the current string from the display
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.dec, 'String'));
set(handles.edit2, 'String', textString);



% --- Executes on button press in x.
function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.x, 'String'));
set(handles.edit2, 'String', textString);



% --- Executes on button press in y.
function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.y, 'String'));
set(handles.edit2, 'String', textString);



% --- Executes on button press in equalsign.
function equalsign_Callback(hObject, eventdata, handles)
% hObject    handle to equalsign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString,  get(handles.equalsign, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=0;
textString = deblank(get(handles.edit2, 'String'));
range1 = str2num(get(handles.edit3, 'String'));
range2 = str2num(get(handles.edit5, 'String'));
for i = 1:length(textString)
   if textString(i) == '='
       a = 1;
   end
end
set(handles.edit2, 'String', textString);
y = range1(1):pi/30:range1(2);
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
end    
if a == 1
    ha = ezplot(textString);
    set(ha, 'linewidth', 2, 'linestyle', '--', 'color', 'k');
    axis([range1(1) range1(2) range2(1) range2(2)]);
else
%     non-animated backup code
%     y = eval(textString);
%     plot(x,y, '--r', 'linewidth', 2); axis([range1(1) range1(2) range2(1) range2(2)]);
    x = [];
    for i = y
        x = [x i];
        plot(x, eval(textString), '--', 'linewidth', 2, 'color', 'r' ); 
        axis([range1(1) range1(2) range2(1) range2(2)]);
        pause(.001);
    end
end
handle = title(['"' get(handles.edit2, 'String') '"']);
set(handle, 'fontsize', 20, 'color', [.2 .5 .3]);
xlabel('x axis'); ylabel('y axis');


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.cos, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.sin, 'String'));
set(handles.edit2, 'String', textString);



% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, 'pi');
set(handles.edit2, 'String', textString);



% --- Executes on button press in grid.
function grid_Callback(hObject, eventdata, handles)
% hObject    handle to grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global toggle;
if toggle ~ 0
    toggle = 1-toggle;
    grid off;
    set(handles.grid, 'string', 'Grid on');
else 
    toggle = 1;
    grid on;
    set(handles.grid, 'string', 'Grid off');
end



% --- Executes on button press in showXY.
function showXY_Callback(hObject, eventdata, handles)
% hObject    handle to showXY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
han = gtext(' ');
a = get(han, 'Position');
han1 = text(a(1), a(2), ['';'x = ', num2str(a(1)), '\newliney = ',...
        num2str(a(2))])
set(han1, 'Fontsize', 10, 'FontWeight', 'bold', 'Color', 'b',...
              'BackgroundColor', [1 1 1] );



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sqrt.
function sqrt_Callback(hObject, eventdata, handles)
% hObject    handle to sqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2num(get(handles.edit2, 'String'));
num = sqrt(num);
set(handles.edit2, 'String', num2str(num));


% --- Executes on button press in hold.
function hold_Callback(hObject, eventdata, handles)
% hObject    handle to hold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global toggle;
if toggle ~ 0
    toggle = 1-toggle;
    hold off;
    set(handles.hold, 'string', 'hold on');
else 
    toggle = 1;
    hold on;
    set(handles.hold, 'string', 'hold off');
end



% --- Executes on button press in polarplot.
function polarplot_Callback(hObject, eventdata, handles)
% hObject    handle to polarplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
end 
range = str2num(get(handles.edit3, 'String'));
tht = range(1):pi/30:range(2);
r = eval(textString);
if length(r) == 1
    r = r*ones(1, length(tht));
end
polar(tht,r);
title('Polar plot');

% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global toggle;
if toggle ~ 0
    toggle = 1-toggle;
    set(handles.sin, 'string', 'sin(');
    set(handles.cos, 'string', 'cos(');
    set(handles.tan, 'string', 'tan(');
    set(handles.sinh, 'string', 'sinh(');
    set(handles.cosh, 'string', 'cosh(');
    set(handles.tanh, 'string', 'tanh(');
    set(handles.log, 'string', 'log(');
    set(handles.exp, 'string', 'exp(');
else 
    toggle = 1;
    set(handles.sin, 'string', 'asin(');
    set(handles.cos, 'string', 'acos(');
    set(handles.tan, 'string', 'atan(');
    set(handles.sinh, 'string', 'asinh(');
    set(handles.cosh, 'string', 'acosh(');
    set(handles.tanh, 'string', 'atanh(');
    set(handles.log, 'string', 'log10(');
    set(handles.exp, 'string', '10^(');
end



% --- Executes on button press in tht.
function tht_Callback(hObject, eventdata, handles)
% hObject    handle to tht (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, 'tht');
set(handles.edit2, 'String', textString);


% --- Executes on button press in plot3.
function plot3_Callback(hObject, eventdata, handles)
% hObject    handle to plot3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = 0;
textString = get(handles.edit2, 'String');
textString(length(textString)+1) = ' ';
set(handles.edit2, 'String', textString);
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
end
range = str2num(get(handles.edit3, 'String'));
x = range(1):pi/30:range(2);
range = str2num(get(handles.edit5, 'String'));
y = range(1):pi/30:range(2);
for i = length(textString):-1:1
   if textString(i) == '='
       a = 1;
       textString = textString(1:i-1);
   end
end
if a == 1
    cla
    range = str2num(get(handles.edit3, 'String'));
    x = range(1):pi/10:range(2);
    [x, y, z] = ndgrid(x);
    v = eval(textString);
    p = patch(isosurface(x,y,z,v,0));
    rotate3d on;
    set(p,'FaceColor','b', 'EdgeColor', 'g', 'FaceAlpha',0.3);
    grid on;
    camlight 
    view(-27,46);
    lighting gouraud
else
    [x,y] = meshgrid(x,y);
    z = eval(textString);
    rotate3d on;
    mesh(x,y,z);
end
handle = title(['"' get(handles.edit2, 'String') '"']);
set(handle, 'fontsize', 20, 'color', [.2 .5 .3]);
xlabel('x axis'); ylabel('y axis'); zlabel('z axis');


% --- Executes on button press in contourplot.
function contourplot_Callback(hObject, eventdata, handles)
% hObject    handle to contourplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
end
range = str2num(get(handles.edit3, 'String'));
x = range(1):pi/30:range(2);
range = str2num(get(handles.edit5, 'String'));
y = range(1):pi/30:range(2);   
[x,y] = meshgrid(x,y);
z = eval(textString);
contour3(x,y,z);
handle = title(['"' get(handles.edit2, 'String') '"']);
set(handle, 'fontsize', 20, 'color', [.2 .5 .3]);
xlabel('x axis'); ylabel('y axis'); zlabel('z axis');


% --- Executes on button press in set_maxmin.
function set_maxmin_Callback(hObject, eventdata, handles)
% hObject    handle to set_maxmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=0; b=0;
textString = get(handles.edit2, 'String');
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
    if (textString(i) == '=')
        textString = textString(i+1:length(textString));
    end
end
if (length(textString) ~= length(deblank(textString)))
    range1 = str2num(get(handles.edit3, 'String'));
    range2 = str2num(get(handles.edit5, 'String'));
    x = range1(1):pi/80:range1(2);
    y = range1(1):pi/80:range1(2);
    z = eval(textString);
    for i = find(z == max(z))   
        text(x(i), y(i), max(z), 'Maximum');
    end
    for i = find(z == min(z))    
        text(x(i), y(i), min(z), 'Minimum');
    end
else
    range = str2num(get(handles.edit3, 'String'));
    x = range(1):pi/80:range(2);
    y = eval(textString);
    for i = find(y == max(y))   
        text(x(i), max(y),'\downarrow Maximum',...
                                        'HorizontalAlignment','left');
    end
    for i = find(y == min(y))    
        text(x(i), min(y),'\uparrow Minimum',...
                                        'HorizontalAlignment','left');
    end
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.tan, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in cosh.
function cosh_Callback(hObject, eventdata, handles)
% hObject    handle to cosh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.cosh, 'String'));
set(handles.edit2, 'String', textString);

% --- Executes on button press in sinh.
function sinh_Callback(hObject, eventdata, handles)
% hObject    handle to sinh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.sinh, 'String'));
set(handles.edit2, 'String', textString);

% --- Executes on button press in tanh.
function tanh_Callback(hObject, eventdata, handles)
% hObject    handle to tanh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.tanh, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.log, 'String'));
set(handles.edit2, 'String', textString);

% --- Executes on button press in exp.
function exp_Callback(hObject, eventdata, handles)
% hObject    handle to exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
textString = strcat(textString, get(handles.exp, 'String'));
set(handles.edit2, 'String', textString);


% --- Executes on button press in rad.
function rad_Callback(hObject, eventdata, handles)
% hObject    handle to rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global toggle;
if toggle ~ 0
    toggle = 1-toggle;
    set(handles.rad, 'string', 'rad');
else 
    toggle = 1;
    set(handles.rad, 'string', 'deg');
end


% --- Executes on button press in diffplot.
function diffplot_Callback(hObject, eventdata, handles)
% hObject    handle to diffplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit2, 'String');
for i = length(textString):-1:1
    if (textString(i) == '^' || textString(i) == '/' || textString(i) == '*')
        textString = [textString(1:i-1) '.' textString(i:length(textString))];
    end
end
range1 = str2num(get(handles.edit3, 'String'));
range2 = str2num(get(handles.edit5, 'String'));
x = range1(1):pi/30:range1(2);
y = diff(eval(textString)).*10;
x(length(x)) = [];
% x = [];
for i = 1:length(y)
%   x = [x i];
    plot(x(1:i), y(1:i), '--', 'linewidth', 2, 'color', 'k' ); 
    axis([range1(1) range1(2) range2(1) range2(2)]);
    pause(.001);
    % backup code
    % plot(x,diff(y).*1000, '--r', 'linewidth', 2); 
    % axis([range1(1) range1(2) range2(1) range2(2)]);
end
handle = title(['"' ' diff(' get(handles.edit2, 'String') ')"']);
set(handle, 'fontsize', 20, 'color', [.2 .5 .3]);
xlabel('x axis'); ylabel('y axis');
