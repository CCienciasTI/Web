function varargout = Beispiel_2(varargin)
% BEISPIEL_2 MATLAB code for Beispiel_2.fig
%      BEISPIEL_2, by itself, creates a new BEISPIEL_2 or raises the existing
%      singleton*.
%
%      H = BEISPIEL_2 returns the handle to a new BEISPIEL_2 or the handle to
%      the existing singleton*.
%
%      BEISPIEL_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEISPIEL_2.M with the given input arguments.
%
%      BEISPIEL_2('Property','Value',...) creates a new BEISPIEL_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Beispiel_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Beispiel_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Beispiel_2

% Last Modified by GUIDE v2.5 14-Oct-2022 10:44:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Beispiel_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Beispiel_2_OutputFcn, ...
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


% --- Executes just before Beispiel_2 is made visible.
function Beispiel_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Beispiel_2 (see VARARGIN)

% Choose default command line output for Beispiel_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Beispiel_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Beispiel_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function C1_edit1_Callback(hObject, eventdata, handles)
% hObject    handle to C1_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1_edit1 as text
%        str2double(get(hObject,'String')) returns contents of C1_edit1 as a double
C1=str2double(get(hObject,'String'));
handles.C1=C1*10^-6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function C1_edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2_edit2_Callback(hObject, eventdata, handles)
% hObject    handle to C2_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2_edit2 as text
%        str2double(get(hObject,'String')) returns contents of C2_edit2 as a double
C2=str2double(get(hObject,'String'));
handles.C2=C2*10^-6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function C2_edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3_edit3_Callback(hObject, eventdata, handles)
% hObject    handle to C3_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3_edit3 as text
%        str2double(get(hObject,'String')) returns contents of C3_edit3 as a double
C3=str2double(get(hObject,'String'));
handles.C3=C3*10^-6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function C3_edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(2)
img = imread('Comp.png');
image(img);




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(3)
img = imread('Circ.png');
image(img);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(4)
img = imread('Eq.PNG');
image(img); 

% --- Executes on button press in Clear_pushbutton4.
function Clear_pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to Clear_pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plot(1,1)
xlabel('Tiempo')
ylabel('Voltaje')
grid on 
title('Respuesta en el dominio del tiempo')
set(handles.C1_edit1,'string','');
set(handles.C2_edit2,'string','');
set(handles.C3_edit3,'string','');
set(handles.RF1_edit10,'string','');
set(handles.RF2_edit11,'string','');
set(handles.RF3_edit12,'string','');

set(handles.R12_edit13,'string','');
set(handles.R13_edit14,'string','');
set(handles.R23_edit15,'string','');

set(handles.K_edit16,'string','');

set(handles.Tmin_edit17,'string','');
set(handles.Tmax_edit18,'string','');

set(handles.Delta_edit,'string','');

function RF1_edit10_Callback(hObject, eventdata, handles)
% hObject    handle to RF1_edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RF1_edit10 as text
%        str2double(get(hObject,'String')) returns contents of RF1_edit10 as a double
RF1=str2double(get(hObject,'String'));
handles.RF1=RF1*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function RF1_edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RF1_edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RF2_edit11_Callback(hObject, eventdata, handles)
% hObject    handle to RF2_edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RF2_edit11 as text
%        str2double(get(hObject,'String')) returns contents of RF2_edit11 as a double
RF2=str2double(get(hObject,'String'));
handles.RF2=RF2*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function RF2_edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RF2_edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RF3_edit12_Callback(hObject, eventdata, handles)
% hObject    handle to RF3_edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RF3_edit12 as text
%        str2double(get(hObject,'String')) returns contents of RF3_edit12 as a double
RF3=str2double(get(hObject,'String'));
handles.RF3=RF3*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function RF3_edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RF3_edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R12_edit13_Callback(hObject, eventdata, handles)
% hObject    handle to R12_edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R12_edit13 as text
%        str2double(get(hObject,'String')) returns contents of R12_edit13 as a double
R12=str2double(get(hObject,'String'));
handles.R12=R12*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function R12_edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R12_edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R13_edit14_Callback(hObject, eventdata, handles)
% hObject    handle to R13_edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R13_edit14 as text
%        str2double(get(hObject,'String')) returns contents of R13_edit14 as a double
R13=str2double(get(hObject,'String'));
handles.R13=R13*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function R13_edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R13_edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R23_edit15_Callback(hObject, eventdata, handles)
% hObject    handle to R23_edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R23_edit15 as text
%        str2double(get(hObject,'String')) returns contents of R23_edit15 as a double
R23=str2double(get(hObject,'String'));
handles.R23=R23*10^6;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function R23_edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R23_edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K_edit16_Callback(hObject, eventdata, handles)
% hObject    handle to K_edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K_edit16 as text
%        str2double(get(hObject,'String')) returns contents of K_edit16 as a double

K=str2double(get(hObject,'String'));
handles.K=K;
guidata(hObject,handles);
handles


% --- Executes during object creation, after setting all properties.
function K_edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K_edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tmin_edit17_Callback(hObject, eventdata, handles)
% hObject    handle to Tmin_edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tmin_edit17 as text
%        str2double(get(hObject,'String')) returns contents of Tmin_edit17 as a double
Tmin=str2double(get(hObject,'String'));
handles.Tmin=Tmin;
guidata(hObject,handles);
handles


% --- Executes during object creation, after setting all properties.
function Tmin_edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tmin_edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tmax_edit18_Callback(hObject, eventdata, handles)
% hObject    handle to Tmax_edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tmax_edit18 as text
%        str2double(get(hObject,'String')) returns contents of Tmax_edit18 as a double
Tmax=str2double(get(hObject,'String'));
handles.Tmax=Tmax;
guidata(hObject,handles);
handles


% --- Executes during object creation, after setting all properties.
function Tmax_edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tmax_edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Delta_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Delta_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Delta_edit as text
%        str2double(get(hObject,'String')) returns contents of Delta_edit as a double
Delta=str2double(get(hObject,'String'));
handles.Delta=Delta;
guidata(hObject,handles);
handles

% --- Executes during object creation, after setting all properties.
function Delta_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Delta_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=1/(handles.C1*handles.RF1)+1/(handles.C2*handles.RF2)+1/(handles.C3*handles.RF3);
B=1/(handles.C1*handles.C2)*(1/(handles.RF1*handles.RF2)-1/handles.R12^2)+1/(handles.C1*handles.C3)*(1/(handles.RF1*handles.RF3)-1/handles.R13^2)+1/(handles.C2*handles.C3)*(1/(handles.RF2*handles.RF3)-1/handles.R23^2)
C=1/(handles.C1*handles.C2*handles.C3)*(1/(handles.RF1*handles.RF2*handles.RF3)-1/(handles.RF1*handles.R23^2)-1/(handles.RF2*handles.R13^2)-1/(handles.RF3*handles.R12^2)-2/(handles.R12*handles.R13*handles.R23))

syms s S
delta=vpa(s^3+A*s^2+B*s+C,4)
coefdelta=sym2poly(delta) % Los coeficientes son con los que se llevaran a cabo las fracciones parciales

R12=handles.R12
R21=R12
R13=handles.R13
R31=R13
R23=handles.R23
R32=R23
RF1=handles.RF1
RF2=handles.RF2
RF3=handles.RF3
C1=handles.C1
C2=handles.C2
C3=handles.C3

Det1=[1 -1/(C1*R21) -1/(C1*R31)
    0 S+ 1/(C2*RF2) -1/(C2*R32)
    0 -1/(C3*R23) S+1/(C3*RF3)]
num1=vpa(det(Det1),4)


Det2=[S+1/(C1*RF1) 1 -1/(C1*R31)
    -1/(C2*R12) 0 -1/(C2*R32)
    -1/(C3*R13) 0 S+1/(C3*RF3)]
num2=vpa(det(Det2),4)

Det3=[S+1/(C1*RF1) -1/(C1*R21) 1
    -1/(C2*R12) S+1/(C2*RF2) 0
    -1/(C3*R13) -1/(C3*R23) 0 ]
num3=vpa(det(Det3),4)

coefnum1=sym2poly(num1)
coefnum2=sym2poly(num2)
coefnum3=sym2poly(num3)

[r1,p1,k1] = residue(coefnum1,coefdelta)%Num,Den, Ind = Num,Den 
[r2,p2,k2] = residue(coefnum2,coefdelta)%Num,Den, Ind = Num,Den 
[r3,p3,k3] = residue(coefnum3,coefdelta)%Num,Den, Ind = Num,Den 

t=0:0.1:20;
k=handles.K;
V1s=k*(r1(1)*exp(p1(1)*t)+r1(2)*exp(p1(2)*t)+r1(3)*exp(p1(3)*t));
plot(V1s);
hold on 
%k=1;
V2s=k*(r2(1)*exp(p2(1)*t)+r2(2)*exp(p2(2)*t)+r2(3)*exp(p2(3)*t));
plot(V2s);
%k=handles.K;
V3s=k*(r3(1)*exp(p3(1)*t)+r3(2)*exp(p3(2)*t)+r3(3)*exp(p3(3)*t));
plot(V3s);
xlim([handles.Tmin handles.Tmax])
xlabel('Tiempo')
ylabel('Voltaje')
grid on 
legend('V1s','V2s','V3s')
title('Respuesta en el dominio del tiempo')
hold off


% --- Executes during object creation, after setting all properties.
function Clear_pushbutton4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Clear_pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
