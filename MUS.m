function varargout = MUS(varargin)
% MUS MATLAB code for MUS.fig
%      MUS, by itself, creates a new MUS or raises the existing
%      singleton*.
%
%      H = MUS returns the handle to a new MUS or the handle to
%      the existing singleton*.
%
%      MUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUS.M with the given input arguments.
%
%      MUS('Property','Value',...) creates a new MUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MUS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MUS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MUS

% Last Modified by GUIDE v2.5 23-Jul-2020 13:54:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MUS_OpeningFcn, ...
                   'gui_OutputFcn',  @MUS_OutputFcn, ...
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


% --- Executes just before MUS is made visible.
function MUS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MUS (see VARARGIN)

% Choose default command line output for MUS
handles.output = hObject;
xlabel('Azimuth angles \theta (degrees)');
ylabel('Power (pseudo)spectrum (normalized)');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MUS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MUS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double



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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double



% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double



% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double



% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double



% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double



% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double



% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
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

set(handles.text5,'String','');
cla;

M=get(handles.edit1,'string');
M=str2double(M);
SNR=get(handles.edit2,'string');
SNR=str2double(SNR);
d=get(handles.edit3,'string');
d=str2double(d);
N=get(handles.edit4,'string');
N=str2double(N);

if M~=M || SNR~=SNR || d~=d || N~=N 
set(handles.text5,'String','ENTER DATA');
set(handles.text5,'ForegroundColor',[1 0 0]);
else

    if d>=M
        set(handles.text5,'String','ЭМ волн >= элементов решетки');
        set(handles.text5,'ForegroundColor',[1 0 0]);
    else
        
        if d>9
            set(handles.text5,'String','ЭМ волн > 9');
            set(handles.text5,'ForegroundColor',[1 0 0]);
        else
S1=randn(d,N); 
%матрица из -1 0 1 

for ii=1:d
    for jj=1:N
        if S1(ii,jj)>0
            S1(ii,jj)=1;
        elseif S1(ii,jj)==0
            S1(ii,jj)=0;
        elseif S1(ii,jj)<0
            S1(ii,jj)=-1;
        end
    end
end

S2=randn(d,N); 
%матрица из -1 0 1 

for ii=1:d
    for jj=1:N
        if S2(ii,jj)>0
            S2(ii,jj)=1;
        elseif S2(ii,jj)==0
            S2(ii,jj)=0;
        elseif S2(ii,jj)<0
            S2(ii,jj)=-1;
        end
    end
end

S=(S1+S2*1i)/sqrt(2); %QPSK

W1=randn(M,N); 
W2=randn(M,N);

W =(W1+W2*1i)/sqrt(2)*10^(-SNR/20); %AWGN

% mu_R=2*pi/M;

% cases=[-1,0,1;-0.5,0,0.5;-0.3,0,0.3];

% sizecases=size(cases);

massiveM=1:M;

% for ii=1:sizecases(1,1)
    
    %углы прихода(пространственные частоты)
%     mu_1 = cases(ii,1)*mu_R;
%     mu_2 = cases(ii,2)*mu_R;
%     mu_3 = cases(ii,3)*mu_R;

RANDOM=get(handles.radiobutton1,'Value');

errorflag=0;

if RANDOM==0
if d==1
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    if value1~=value1
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);  
        mu_1=pi*sin(theta_1);
        a_1=exp((mu_1*massiveM)*1i);
        A=[a_1]; 
    end
end
if d==2
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
     if value1~=value1 || value2~=value2
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
     else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        A=[a_1;a_2]; 
     end
end

if d==3
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
     if value1~=value1 || value2~=value2 || value3~=value3
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
     else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        A=[a_1;a_2;a_3]; 
     end
end

if d==4
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        A=[a_1;a_2;a_3;a_4];
    end
end

if d==5
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    value5=get(handles.edit9,'string');
    value5=str2double(value5);
    if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4 || value5~=value5
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        theta_5=value5*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        mu_5=pi*sin(theta_5);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        a_5=exp((mu_5*massiveM)*1i);
        A=[a_1;a_2;a_3;a_4;a_5];
    end
end

if d==6
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    value5=get(handles.edit9,'string');
    value5=str2double(value5);
    value6=get(handles.edit10,'string');
    value6=str2double(value6);
    if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4 || value5~=value5 || value6~=value6
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        theta_5=value5*(pi/180);
        theta_6=value6*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        mu_5=pi*sin(theta_5);
        mu_6=pi*sin(theta_6);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        a_5=exp((mu_5*massiveM)*1i);
        a_6=exp((mu_6*massiveM)*1i);
        A=[a_1;a_2;,a_3;a_4;a_5;a_6]; 
    end
end

if d==7
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    value5=get(handles.edit9,'string');
    value5=str2double(value5);
    value6=get(handles.edit10,'string');
    value6=str2double(value6);
    value7=get(handles.edit11,'string');
    value7=str2double(value7);
    if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4 || value5~=value5 || value6~=value6 || value7~=value7
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        theta_5=value5*(pi/180);
        theta_6=value6*(pi/180);
        theta_7=value7*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        mu_5=pi*sin(theta_5);
        mu_6=pi*sin(theta_6);
        mu_7=pi*sin(theta_7);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        a_5=exp((mu_5*massiveM)*1i);
        a_6=exp((mu_6*massiveM)*1i);
        a_7=exp((mu_7*massiveM)*1i);
        A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7];
    end
end

if d==8
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    value5=get(handles.edit9,'string');
    value5=str2double(value5);
    value6=get(handles.edit10,'string');
    value6=str2double(value6);
    value7=get(handles.edit11,'string');
    value7=str2double(value7);
    value8=get(handles.edit12,'string');
    value8=str2double(value8);
      if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4 || value5~=value5 || value6~=value6 || value7~=value7 || value8~=value8
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
      else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        theta_5=value5*(pi/180);
        theta_6=value6*(pi/180);
        theta_7=value7*(pi/180);
        theta_8=value8*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        mu_5=pi*sin(theta_5);
        mu_6=pi*sin(theta_6);
        mu_7=pi*sin(theta_7);
        mu_8=pi*sin(theta_8);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        a_5=exp((mu_5*massiveM)*1i);
        a_6=exp((mu_6*massiveM)*1i);
        a_7=exp((mu_7*massiveM)*1i);
        a_8=exp((mu_8*massiveM)*1i);
        A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7;a_8];
      end
end

if d==9
    value1=get(handles.edit5,'string');
    value1=str2double(value1);
    value2=get(handles.edit6,'string');
    value2=str2double(value2);
    value3=get(handles.edit7,'string');
    value3=str2double(value3);
    value4=get(handles.edit8,'string');
    value4=str2double(value4);
    value5=get(handles.edit9,'string');
    value5=str2double(value5);
    value6=get(handles.edit10,'string');
    value6=str2double(value6);
    value7=get(handles.edit11,'string');
    value7=str2double(value7);
    value8=get(handles.edit12,'string');
    value8=str2double(value8);
    value9=get(handles.edit13,'string');
    value9=str2double(value9);
    
    if value1~=value1 || value2~=value2 || value3~=value3 || value4~=value4 || value5~=value5 || value6~=value6 || value7~=value7 || value8~=value8 || value9~=value9
        set(handles.text5,'String','ENTER ANGLES');
        set(handles.text5,'ForegroundColor',[1 0 0]);
        errorflag=1;
    else
        theta_1=value1*(pi/180);
        theta_2=value2*(pi/180);
        theta_3=value3*(pi/180);
        theta_4=value4*(pi/180);
        theta_5=value5*(pi/180);
        theta_6=value6*(pi/180);
        theta_7=value7*(pi/180);
        theta_8=value8*(pi/180);
        theta_9=value9*(pi/180);
        mu_1=pi*sin(theta_1);
        mu_2=pi*sin(theta_2);
        mu_3=pi*sin(theta_3);
        mu_4=pi*sin(theta_4);
        mu_5=pi*sin(theta_5);
        mu_6=pi*sin(theta_6);
        mu_7=pi*sin(theta_7);
        mu_8=pi*sin(theta_8);
        mu_9=pi*sin(theta_9);
        a_1=exp((mu_1*massiveM)*1i);
        a_2=exp((mu_2*massiveM)*1i);
        a_3=exp((mu_3*massiveM)*1i);
        a_4=exp((mu_4*massiveM)*1i);
        a_5=exp((mu_5*massiveM)*1i);
        a_6=exp((mu_6*massiveM)*1i);
        a_7=exp((mu_7*massiveM)*1i);
        a_8=exp((mu_8*massiveM)*1i);
        a_9=exp((mu_9*massiveM)*1i);
        A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7;a_8;a_9];
    end
end
end

if RANDOM==1
if d==1
    value1=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String','');
    set(handles.edit7,'String','');
    set(handles.edit8,'String','');
    set(handles.edit9,'String','');
    set(handles.edit10,'String','');
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);  
    mu_1=pi*sin(theta_1);
    a_1=exp((mu_1*massiveM)*1i);
    A=[a_1]; 
end

if d==2
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String','');
    set(handles.edit8,'String','');
    set(handles.edit9,'String','');
    set(handles.edit10,'String','');
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    A=[a_1;a_2]; 
end

if d==3
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String','');
    set(handles.edit9,'String','');
    set(handles.edit10,'String','');
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    A=[a_1;a_2;a_3]; 
end

if d==4
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String','');
    set(handles.edit10,'String','');
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    A=[a_1;a_2;a_3;a_4]; 
end

if d==5
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    value5=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String',value5);
    set(handles.edit10,'String','');
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    theta_5=value5*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    mu_5=pi*sin(theta_5);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    a_5=exp((mu_5*massiveM)*1i);
    A=[a_1;a_2;a_3;a_4;a_5];
end

if d==6
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    value5=randi([-90,90]);
    value6=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String',value5);
    set(handles.edit10,'String',value6);
    set(handles.edit11,'String','');
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    theta_5=value5*(pi/180);
    theta_6=value6*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    mu_5=pi*sin(theta_5);
    mu_6=pi*sin(theta_6);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    a_5=exp((mu_5*massiveM)*1i);
    a_6=exp((mu_6*massiveM)*1i);
    A=[a_1;a_2;,a_3;a_4;a_5;a_6]; 
end

if d==7
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    value5=randi([-90,90]);
    value6=randi([-90,90]);
    value7=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String',value5);
    set(handles.edit10,'String',value6);
    set(handles.edit11,'String',value7);
    set(handles.edit12,'String','');
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    theta_5=value5*(pi/180);
    theta_6=value6*(pi/180);
    theta_7=value7*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    mu_5=pi*sin(theta_5);
    mu_6=pi*sin(theta_6);
    mu_7=pi*sin(theta_7);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    a_5=exp((mu_5*massiveM)*1i);
    a_6=exp((mu_6*massiveM)*1i);
    a_7=exp((mu_7*massiveM)*1i);
    A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7];
end

if d==8
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    value5=randi([-90,90]);
    value6=randi([-90,90]);
    value7=randi([-90,90]);
    value8=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String',value5);
    set(handles.edit10,'String',value6);
    set(handles.edit11,'String',value7);
    set(handles.edit12,'String',value8);
    set(handles.edit13,'String','');
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    theta_5=value5*(pi/180);
    theta_6=value6*(pi/180);
    theta_7=value7*(pi/180);
    theta_8=value8*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    mu_5=pi*sin(theta_5);
    mu_6=pi*sin(theta_6);
    mu_7=pi*sin(theta_7);
    mu_8=pi*sin(theta_8);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    a_5=exp((mu_5*massiveM)*1i);
    a_6=exp((mu_6*massiveM)*1i);
    a_7=exp((mu_7*massiveM)*1i);
    a_8=exp((mu_8*massiveM)*1i);
    A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7;a_8];
end

if d==9
    value1=randi([-90,90]);
    value2=randi([-90,90]);
    value3=randi([-90,90]);
    value4=randi([-90,90]);
    value5=randi([-90,90]);
    value6=randi([-90,90]);;
    value7=randi([-90,90]);
    value8=randi([-90,90]);
    value9=randi([-90,90]);
    set(handles.edit5,'String',value1);
    set(handles.edit6,'String',value2);
    set(handles.edit7,'String',value3);
    set(handles.edit8,'String',value4);
    set(handles.edit9,'String',value5);
    set(handles.edit10,'String',value6);
    set(handles.edit11,'String',value7);
    set(handles.edit12,'String',value8);
    set(handles.edit13,'String',value9);
    theta_1=value1*(pi/180);
    theta_2=value2*(pi/180);
    theta_3=value3*(pi/180);
    theta_4=value4*(pi/180);
    theta_5=value5*(pi/180);
    theta_6=value6*(pi/180);
    theta_7=value7*(pi/180);
    theta_8=value8*(pi/180);
    theta_9=value9*(pi/180);
    mu_1=pi*sin(theta_1);
    mu_2=pi*sin(theta_2);
    mu_3=pi*sin(theta_3);
    mu_4=pi*sin(theta_4);
    mu_5=pi*sin(theta_5);
    mu_6=pi*sin(theta_6);
    mu_7=pi*sin(theta_7);
    mu_8=pi*sin(theta_8);
    mu_9=pi*sin(theta_9);
    a_1=exp((mu_1*massiveM)*1i);
    a_2=exp((mu_2*massiveM)*1i);
    a_3=exp((mu_3*massiveM)*1i);
    a_4=exp((mu_4*massiveM)*1i);
    a_5=exp((mu_5*massiveM)*1i);
    a_6=exp((mu_6*massiveM)*1i);
    a_7=exp((mu_7*massiveM)*1i);
    a_8=exp((mu_8*massiveM)*1i);
    a_9=exp((mu_9*massiveM)*1i);
    A=[a_1;a_2;a_3;a_4;a_5;a_6;a_7;a_8;a_9];
end
end
%     theta_1=0*(pi/180); %угол направления прихода ЭМ волны от первого источника
%     theta_2=20*(pi/180); %угол направления прихода ЭМ волны от второго источника
%     theta_3=30*(pi/180);
% 
%     mu_1=pi*sin(theta_1);
%     mu_2=pi*sin(theta_2);
%     mu_3=pi*sin(theta_3);
%     
%     %сканирующие вектора
%     a_1=exp((mu_1*massiveM)*1i);
%     a_2=exp((mu_2*massiveM)*1i);
%     a_3=exp((mu_3*massiveM)*1i);
%     
%     A=[a_1;a_2;a_3]; %матрица сканирующих векторов
if errorflag==0
     A=A.';
   
    X=(A*S)+W; %матрица принятых сигналов
    R=X*(X');
    
    [U,Sigma,Vh]=svd(X);
    
    Usize=size(U);
    Ulen=Usize(1,2);
    Uhight=Usize(1,1);
   
    flag=1;
    for iii=1:Uhight
        for jjj=d+1:Ulen
            U_0(iii,flag)=U(iii,jjj); %шумовое подпространство
            flag=flag+1;
        end
        flag=1;
    end
    
    %азимуты
    thetas1=-90:91;

    thetas=thetas1*(pi/180); % диапазон азимутов
    
    mus=pi*sin(thetas); % диапазон пространственных частот

   mussize=size(mus);
   muslen=mussize(1,2);
   
   for jj=1:muslen
       a(:,jj)=exp(mus(jj)*massiveM*1i);
   end
   
   %MVDR
   asize=size(a);
   alen=asize(1,2);
  
   for jj=1:alen
       a_idx = reshape(a(:,jj),[M,1]);
       
       multy=(R^(-1))*a_idx;
       S_MVDR(jj)=1/((a_idx')*multy);
   end
       
   %MUSIC   
      for jj=1:alen
       a_idx = reshape(a(:,jj),[M,1]);
       
       multya_idx=(a_idx')*a_idx;
       multyU_0=(U_0')*a_idx;
       multyU=U_0*multyU_0;
       S_MUSIC(jj)=multya_idx/((a_idx')*multyU);
      end
      
      maxmvdr=S_MVDR/max(S_MVDR);
      maxmusic=S_MUSIC/max(S_MUSIC);
      realmvdr=real(maxmvdr);
      realmusic=real(maxmusic);
      
%       subplot(2,2,ii);
      semilogy((thetas*(180/pi)),realmvdr,'g-','LineWidth',1.5);
      xlabel('Azimuth angles \theta (degrees)');
      ylabel('Power (pseudo)spectrum (normalized)');
      hold on;
      grid on;
      semilogy((thetas*(180/pi)),realmusic,'r-','LineWidth',1.5);
      hold off;
      legend('MVDR','MUSIC');
% end
end
end
end
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
